---
layout: post
title: Choosing a programming language in 2024
---

Welp. I want to write a simple backend service and have it low maintenance for the upcoming decade. I will probably want to write other simple backend services in the upcoming decade and I'm getting old so I'd rather stick to fewer than more languages. But also I'd rather the languages to be tidy. This is a stream-of-thought for my own reference, but I might end up pushing the "publish" button anyway.

Without further ado, the contenders:

### Haskell

I already wrote 30 lines of Haskell to do very simple API call forwarding, so I'm not starting from scratch here. The ergonomics just aren't there:

* Stack downloads a lot of things and uses exorbitant amounts of disk space. I'm running on a $5 DigitalOcean droplet!
* With such strong typing I want an amazing IDEs but mostly end up typing things in vim.
* Haskell is not a beautiful language. Yes it maintains backwards compatibility. Why `fmap` on functors and `map` only on lists?
* I count six different string types and I'm trying very hard to count as few as possible. If one wanted to count *as many as possible*, I shudder to think what the number would be. Ideal number of string types is one.

On the plus side, [`stack` is in my distro's repos](https://packages.debian.org/search?keywords=haskell-stack)...

### PHP

Hey, I have three-ish things running PHP on the aforementioned $5 DigitalOcean droplet. Less beautiful language than Haskell, very low maintenance, just works. But hey it's not 2004 anymore...

### Python

It's everywhere and there's no hope of it ever going away. Its library ecosystem is amazing, its package management story is atrocious. Reads like pseudocode, but all bugs are runtime. Probably a practical choice, but is it really that much better than PHP? If I'm getting invested in another language apart from PHP, I'd like it to be nicer.

### Scala

Maybe. Having worked with Scala professionally for 7 years, I know it well and like it enough. It seems to be losing a lot of steam recently, as in its cake eaten completely by the inferior Kotlin. But it's not disappearing completely, is it? And the ecosystem of Java (and Kotlin!) libraries is there.

### F#

[F#](https://fsharp.org/) is a nicer language than Scala. But it's not *that much* nicer and reportedly the .NET ecosystem is worse. It's also an ecosystem I don't know at all. There's ASP.NET and .NET and .NET core and .NET framework and perhaps they're complementary or one replaces the other and the naming is confusing...

### Idris and PureScript and Roc

[Idris](https://www.idris-lang.org/) is Haskell without the warts, but no one uses Idris and it has no libraries. Nor even a package manager really.

[PureScript](https://www.purescript.org/) requires a lot of imports and seems to be more of a frontend language, but perhaps I'm just being uncharitable to it. And uh JavaScript as its main compile target. It makes sense for a frontend language, of course. I use Elm and don't complain about JavaScript being the compile target. PureScript looks real nice!

[ROC](https://www.roc-lang.org/) is not even a thing yet.

All three a bit too much bleeding edge.

### Conclusion

There is no conclusion! The only conclusion I can possibly come up with is that the nicer the language, the worse its ecosystem. The worse the language, the nicer its ecosystem. Here's, uh, an infographic:

<div class="wide">
<img alt="objective ranking of programming languages" src="/assets/2024/languages.svg" />
</div>
