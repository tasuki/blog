---
layout: post
title: "Elm and Maximum call stack size exceeded"
---

A-ha, this will be an easy blog post!

So perhaps your JavaScript console tells you `Uncaught RangeError: Maximum call stack size exceeded`.

That probably means your recursion isn't [tail-recursive](https://en.wikipedia.org/w/index.php?title=Tail_recursion). A recursive function calls itself. A tail-recursive function calls itself as its final step -- it does not further modify the result of the recursive call.

A thing that caught me out just now, while `f (a b)` and `f <| a b` are functionally equivalent, the _former is tail recursive_ while the _latter is not_.

From [`Basics.elm`](https://github.com/elm/core/blob/1.0.5/src/Basics.elm#L899-L906):

```elm
{-| Saying `f <| x` is exactly the same as `f x`.

It can help you avoid parentheses, which can be nice sometimes. Maybe you want
to apply a function to a `case` expression? That sort of thing.
-}
apL : (a -> b) -> a -> b
apL f x =
  f x
```

In `f (a b)`, the `a b` part is evaluated first, and then `f` is called as the last thing. In `f <| a b`, the `<|` itself is application of a function, thus breaking the tail elimination as `f` is not the last thing called.

Elm says no runtime exceptions. Generally true, not too much of a stretch. But you still do have to watch out a tiny little bit...
