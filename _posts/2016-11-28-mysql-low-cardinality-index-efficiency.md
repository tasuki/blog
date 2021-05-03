---
layout: post
title: MySQL low cardinality index efficiency
categories:
- computers
comments: []
---

I’ve heard the opinion that indexes on low cardinality columns don’t work well. I set out to disprove that.

First, let’s create a table with a boolean column _“active”_ and fill it with dummy data. Please note it includes a (default, B-Tree) index on the _“active”_ column.

```sql
> show create table users\G
*************************** 1. row ***************************
Table: users
Create Table: CREATE TABLE `users` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(50) DEFAULT NULL,
`email` varchar(100) DEFAULT NULL,
`active` tinyint(1) DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
1 row in set (0.00 sec)

> DELIMITER ;;
> CREATE PROCEDURE insert_random(IN amount INT, IN percent_active INT)
    -> BEGIN
    ->   DECLARE counter INT DEFAULT 0;
    ->   myloop: LOOP
    ->     if (counter = amount) THEN
    ->       LEAVE myloop;
    ->     end if;
    ->     INSERT INTO users SET
    ->       name = UUID(),
    ->       email = UUID(),
    ->       active = IF(FLOOR(RAND() * 100) < percent_active, 1, 0);
    ->     SET counter = counter + 1;
    ->   END LOOP;
    -> END ;;
Query OK, 0 rows affected (0.00 sec)

> DELIMITER ;

> call insert_random(1000000, 10);
Query OK, 1 row affected (36.60 sec)

> select count(*) from users;
+----------+
| count(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.18 sec)
```

We’ve inserted a million users into our table! That took some time. Please note the 0.18 seconds to count them all.

Now, let’s see how fast we can count the active users:

```sql
> select count(*) from users where active = true;
+----------+
| count(*) |
+----------+
|    99887 |
+----------+
1 row in set (0.04 sec)
```

Cool, pretty fast. Can you explain that?

```sql
> explain select count(*) from users where active = true\G
*************************** 1. row ***************************
           id: 1
  select_type: SIMPLE
        table: users
   partitions: NULL
         type: ref
possible_keys: active
          key: active
      key_len: 2
          ref: const
         rows: 208462
     filtered: 100.00
        Extra: Using index
1 row in set, 1 warning (0.00 sec)
```

Now let’s drop the index and run the test again:

```sql
> alter table users drop key active;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

> select count(*) from users where active = true;
+----------+
| count(*) |
+----------+
|    99887 |
+----------+
1 row in set (0.24 sec)
```

Wow, a lot slower… I’ve ran the selects a couple of times with consistent results to verify no caching was influencing the results. Let’s see the explain:

```sql
> explain select count(*) from users where active = true\G
*************************** 1. row ***************************
           id: 1
  select_type: SIMPLE
        table: users
   partitions: NULL
         type: ALL
possible_keys: NULL
          key: NULL
      key_len: NULL
          ref: NULL
         rows: 912236
     filtered: 10.00
        Extra: Using where
1 row in set, 1 warning (0.00 sec)
```

As you hopefully know: *“Using index”* good, *“Using where”* bad.

**TL;DR A boolean column consisting of 10% TRUE and 90% FALSE queried for TRUE values using an index takes 0.04 sec, while not using an index takes 0.24 sec. The index speeds up the query by about a factor of six.**

I’ve repeated the test with worse case scenario of a binary column split 50/50. 50% true, 50% false. The numbers are a bit less consistent, but generally around 0.16 for the indexed version and 0.24 for the unindexed version. *Go indexes!*
