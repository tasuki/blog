---
layout: post
title: Notes on OKLCH and rainbows
---

<style>
.oklch-show { margin: 2em 0 1em 0; width: 100%; height: 2em; }
</style>

Colours are tricky! OKLCH is a colour space. OKLCH is better than most colour spaces in that changing the values leads to natural sensible results. But sometimes, those sensible results are not achievable because of physics, biology (eyes), and technology (display devices).

Evil Martians have a [very good blog post on OKLCH](https://evilmartians.com/chronicles/oklch-in-css-why-quit-rgb-hsl). In case that goes down, [MDN has a somewhat drier explanation](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value/oklch).

The problem with *the other colour spaces* is that changing one of the values a certain amount leads to strange results. In HSV, changing the hue by 30 sometimes shows almost the same colour, other times an entirely different one.

In OKLCH, changing one of the values gives you nice results. Also, sometimes it gives you an inexistent colour, or a colour which is theoretically displayable, but not by your device. Oops.

Here's an **[OKLCH Color Picker & Converter](https://oklch.com/)**, _go play around with it_! In case it goes down, [source](https://github.com/evilmartians/oklch-picker).

I like cyclical rainbow colour palettes. I like having them consist of existing and displayable colours.

<div class="wide">
<div class="oklch-show" style="background: linear-gradient(90deg,
  oklch(50% 0.08   0),
  oklch(50% 0.08  30),
  oklch(50% 0.08  60),
  oklch(50% 0.08  90),
  oklch(50% 0.08 120),
  oklch(50% 0.08 150),
  oklch(50% 0.08 180),
  oklch(50% 0.08 210),
  oklch(50% 0.08 240),
  oklch(50% 0.08 270),
  oklch(50% 0.08 300),
  oklch(50% 0.08 330),
  oklch(50% 0.08 360));">
</div>
</div>

Here's a somewhat dark one. OKLCH with Lightness 50%, Chroma 0.08 and all them hues. Anything darker, and the chroma can't go up because of the missing cyans (and yellows). The maximum chroma that has all the colours for Lightness 50% is 0.08 -- all the chromas in this post will be the maximal possible ones for the given lightness *so that all the hues are still available in rgb*.

<div class="wide">
<div class="oklch-show" style="background: linear-gradient(90deg,
  oklch(60% 0.1   0),
  oklch(60% 0.1  30),
  oklch(60% 0.1  60),
  oklch(60% 0.1  90),
  oklch(60% 0.1 120),
  oklch(60% 0.1 150),
  oklch(60% 0.1 180),
  oklch(60% 0.1 210),
  oklch(60% 0.1 240),
  oklch(60% 0.1 270),
  oklch(60% 0.1 300),
  oklch(60% 0.1 330),
  oklch(60% 0.1 360));">
</div>
</div>

Increasing Lightness to 60%, Chroma can go up to 0.1, again hitting the cyans.

<div class="wide">
<div class="oklch-show" style="background: linear-gradient(90deg,
  oklch(76% 0.12   0),
  oklch(76% 0.12  30),
  oklch(76% 0.12  60),
  oklch(76% 0.12  90),
  oklch(76% 0.12 120),
  oklch(76% 0.12 150),
  oklch(76% 0.12 180),
  oklch(76% 0.12 210),
  oklch(76% 0.12 240),
  oklch(76% 0.12 270),
  oklch(76% 0.12 300),
  oklch(76% 0.12 330),
  oklch(76% 0.12 360));">
</div>
</div>

The maximum chroma (for preserving all the hues) is 0.12 for Lightness 71--76%.

<div class="wide">
<div class="oklch-show" style="background: linear-gradient(90deg,
  oklch(85% 0.07   0),
  oklch(85% 0.07  30),
  oklch(85% 0.07  60),
  oklch(85% 0.07  90),
  oklch(85% 0.07 120),
  oklch(85% 0.07 150),
  oklch(85% 0.07 180),
  oklch(85% 0.07 210),
  oklch(85% 0.07 240),
  oklch(85% 0.07 270),
  oklch(85% 0.07 300),
  oklch(85% 0.07 330),
  oklch(85% 0.07 360));">
</div>
</div>

At lightness 85%, the purples are becoming a problem, allowing chroma of only up to 0.07 -- a light saturated purple doesn't exist. I'm so sorry.
