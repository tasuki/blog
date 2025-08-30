---
layout: post
title: Vibe coding
---

This is it, vibe coding is upon us!

I've been using LLMs for programming for some time: they help me choose the right high level architecture, and they implement well-defined self-contained functions for me. I don't trust an LLM to make changes to my code on its own.

Rysio from [LSG](https://lsg.go.art.pl/) independently invented two layer go. Two go boards above each other, connected. A regular stone has 5 liberties (4 neighbors + 1 from the other layer), the border has 4 liberties, and the corner has 3. It plays much better than full-3D go, which suffers from too much connectivity.

I wanted to implement it, but Omi said I should just vibe code it. Well, it worked. Here is my transcript:

> "two layer" game of go, dimensions 11x11x2. Ideally something on the browser, front-end only, no backend. 3d representation one can rotate, click places stones of alternating colours, normal go rules apply

I randomly chose [v0](https://v0.app/) from Vercel, which one-shotted a fully working, playable version in a couple of seconds. Some ~300 lines of TypeScript.

> Amazing actually! Three changes I'd like to make:
>
> 1. The menu covers most of the screen on mobile. Make it collapsible by a button.
> 2. Hard to click: make the clickable spots bigger
> 3. Connect the upper and the lower layer by lines (same as there are lines connecting the spots on the upper and lower layers themselves)

That worked too.

> Again, amazing. One more little thing: can you please make the distance between the layers the same as the distance between other neighboring points? I just want the distances to be equal...

And that, too. Here it changed the opacity of some of the lines for a mysterious reason, but that was pretty simple to fix.

It works, it's done: No side project for me! Vercel even hosts it for me.

Here is the [fully playable two-layer go](https://tulejer.vercel.app/) and the [chat that led to it](https://v0.app/chat/two-layer-go-fjgehtGABIZ) (which I suppose you can fork or something).
