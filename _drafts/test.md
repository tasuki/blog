---
layout: post
title: Just a test but so very long that it definitely wřápš
---

## No second level headings!

Well *healloez*, this is a **test post**. We have [links](https://tasuki.org/). And dashes - oh we do have dashes -- different ones --- yay!

### Third level heading has to be even longer so as to see how it wraps

Do we handle "quotes" and 'single'? That's cool... What about lists?
- one
- two is so very long that it will definitely wrap write some more more more and still more
- three

Ordered?

1. four
2. five
3. six

Que?

> A funny quote... it should probably wrap? how's it wrap? 's it wrap good? real good?

A paragraph to separate the quote from the separator.

---

And I know not what else perhaps some code `perhaps some code`?

    $ indented code

and

```
$ quoted code too -> this has some really long text to see how that behaves, we don't want too much scrolling?
with several lines
and one more
```

State monad for you to fill in:

```scala
// implement a state monad

package fpinscala.mystate

case class State[S,+A](run: S => (A, S)) {
  def map[B](f: A => B): State[S, B] =
    ???
  def map2[B,C](sb: State[S, B])(f: (A, B) => C): State[S, C] =
    ???
  def flatMap[B](f: A => State[S, B]): State[S, B] =
    ???
}

object State {
  def unit[S, A](a: A): State[S, A] =
    ???
}
```

An image, who woulda thunk I'd go shopping here for 7 years:

![alt text](https://gallery.tasuki.org/gallery/2009/06-5-warszawa/48-still-raining.jpg)

Looks good...

Even moar text? And a table:

| Item    | Quantity | Price |
|---------|---------:|------:|
| Bread   | 10       | 1     |
| Avocado | 100      | 123   |
| Caviar  | 1        | 1000  |

And some[^some] references.[^ref]

[^some]: This is the first reference.

[^ref]: This is the second reference.

---

For https://huetone.ardov.me/

```
{ "name": "blog-colours-test"
, "hues":
  [ { "name": "light",     "colors": [ "#ffffff", "#221100", "#cc6600" ] }
  , { "name": "dark",      "colors": [ "#222222", "#ffeedd", "#ff8800" ] }
  , { "name": "limelight", "colors": [ "#eeffdd", "#112200", "#779900" ] }
  , { "name": "limedark",  "colors": [ "#112200", "#eeffdd", "#ccff00" ] }
  ]
, "tones": [ "0", "100", "200" ]
}
```
