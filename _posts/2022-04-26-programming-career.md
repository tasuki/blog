---
layout: post
title: My programming career
---

I started my programming career writing [Idris](https://www.idris-lang.org/). It's a programming language similar to Haskell, with dependent types. That means types are first class citizens, so you can perform computation on them. It's quite a bit of hassle, all for the dubious benefit of program correctness. The library ecosystem was almost nonexistent.

Then I had a brief stint with [Elm](https://elm-lang.org/) and Scheme Lisp. Elm is like an easier Haskell or Idris, with friendly error messages. I no longer had to deal with the higher-kinded types. Scheme is a language with almost no syntax, hence very well suited for beginners like me.

After that, my career progressed to [Scala](https://scala-lang.org/), the first commercially successful language I've used. Oh boy, let me tell you about Scala -- apart from the functional programming paradigm, it supports object-oriented programming, allowing one to mutate shared state. Also it runs on the JVM, which is pretty cool, with many third party libraries available.

I've also used Python a bit meanwhile, and who hasn't? Yes the 2 vs 3 was a fiasco but the ecosystem is amazing and it reads like pseudocode, nevermind that one doesn't know which functions mutate things in place and which return new things. Also I drink a beer every now and then, one only lives once (OOLO), leave me alone mmkay?

Later I've come to the pinnacle of my programming career: [PHP](https://www.php.net/). I've spent a good deal of time with PHP, using domain driven development, test driven development, and doing continuous integration, like a good developer should. The language might have its warts, but the productivity is amazing. We used Vagrant and Chef to manage our environments, also we'd deploy things using Docker.

Finally, I stopped using the Symfony Framework, and started using various in-house frameworks, and sometimes even no frameworks at all. At some point I stopped using Subversion and started copying PHP files straight to the web servers. Also I found out that apart from object-oriented programming, PHP also supports "imperative programming". This means one does not have to write code within classes and instantiate objects, rather one can directly mutate global state. This further decreased the ceremony and increased my productivity.

One Friday, upon coming back from lunch break, I learned the customer wanted to have a points-based eshop ready by Monday morning. Their customers had been collecting points for doing whatever, and now was the time for them to buy merch using those points. Here's the list of the merch, including photos and prices in points, please send us a weekly list of who ordered what, ta! Do you think I spent the weekend working? Nope! I buckled up, wrote five hundred lines of PHP in several hours of perfect flow, tested it a little, fixed a bug or two that came up, copied the files over to the production server, called it a day, and went home for the evening. Come Monday, everything worked just fine.

---

Is this a joke? Well, the timeline, perhaps, a little bit. Apart from that, not so much. I really did write the points-based eshop in PHP in an afternoon, and it really did work. As people grow their career, they achieve more and more. Me, I achieve less and less. I really don't have anything to point at that I wrote in Idris. [insert shrug emoji]
