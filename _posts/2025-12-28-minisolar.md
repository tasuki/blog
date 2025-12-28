---
layout: post
title: Mini Solar
---

<style>
.minisolartile { border: 1px solid #999; float: left; margin: 9px; line-height: 50px; width: 50px; height: 75px; writing-mode: vertical-lr; transform: rotate(180deg); }
.minisolartile tt { padding: 8px; }
</style>

> This post is third in a series. I started by [attempting to improve Solarized a little](/solar/), then tried to [make it significantly better by *redoing everything*](/solar-v2/), and in this post I simplify it. 

Ah, I could not stand *wasting* hex digits on the shades of gray! This new set of colours doesn't have the smooth hue transition -- which is impossible to achieve in 4 bits per channel -- but they work fine anyway: the dark ones have OKLCH hue 196 while the light ones have hue 107, so it's basically dual-tone:

<div>
<div class="minisolartile" style="background: #022; color: #AA9;"><tt>#022</tt></div>
<div class="minisolartile" style="background: #133; color: #CCB;"><tt>#133</tt></div>
<div class="minisolartile" style="background: #355; color: #EED;"><tt>#355</tt></div>
<div class="minisolartile" style="background: #577; color: #FFE;"><tt>#577</tt></div>
<div class="minisolartile" style="background: #AA9; color: #022;"><tt>#AA9</tt></div>
<div class="minisolartile" style="background: #CCB; color: #133;"><tt>#CCB</tt></div>
<div class="minisolartile" style="background: #EED; color: #355;"><tt>#EED</tt></div>
<div class="minisolartile" style="background: #FFE; color: #577;"><tt>#FFE</tt></div>
<div style="clear: both;"></div>
</div>

To work on both light and dark backgrounds, the red and magenta should be a tiny little brighter than the previous attempt. Against the respective backgrounds:

<div>
<div class="minisolartile" style="background: #022; color: #E34;"><tt>#E34</tt></div>
<div class="minisolartile" style="background: #022; color: #C60;"><tt>#C60</tt></div>
<div class="minisolartile" style="background: #022; color: #A80;"><tt>#A80</tt></div>
<div class="minisolartile" style="background: #022; color: #890;"><tt>#890</tt></div>
<div class="minisolartile" style="background: #022; color: #2A9;"><tt>#2A9</tt></div>
<div class="minisolartile" style="background: #022; color: #28C;"><tt>#28C</tt></div>
<div class="minisolartile" style="background: #022; color: #77D;"><tt>#77D</tt></div>
<div class="minisolartile" style="background: #022; color: #C4B;"><tt>#C4B</tt></div>
<div style="clear: both;"></div>
</div>

<div>
<div class="minisolartile" style="background: #FFE; color: #E34;"><tt>#E34</tt></div>
<div class="minisolartile" style="background: #FFE; color: #C60;"><tt>#C60</tt></div>
<div class="minisolartile" style="background: #FFE; color: #A80;"><tt>#A80</tt></div>
<div class="minisolartile" style="background: #FFE; color: #890;"><tt>#890</tt></div>
<div class="minisolartile" style="background: #FFE; color: #2A9;"><tt>#2A9</tt></div>
<div class="minisolartile" style="background: #FFE; color: #28C;"><tt>#28C</tt></div>
<div class="minisolartile" style="background: #FFE; color: #77D;"><tt>#77D</tt></div>
<div class="minisolartile" style="background: #FFE; color: #C4B;"><tt>#C4B</tt></div>
<div style="clear: both;"></div>
</div>

<details markdown="1">
<summary>As usual, wanna explore the colours in Oklch?</summary>

The following are snippets you can paste to [Huetone](https://huetone.ardov.me/):

```json
{ "name": "minisolar backgrounds"
, "hues":
  [
    { "name": "light"
    , "colors": [ "#FFE", "#EED", "#CCB", "#AA9", "#577", "#355", "#133", "#022" ]
    },
    { "name": "dark"
    , "colors": [ "#022", "#133", "#355", "#577", "#AA9", "#CCB", "#EED", "#FFE" ]
    }
  ]
}
```

```json
{ "name": "minisolar colours"
, "hues":
  [
    { "name": "light"
    , "colors": [ "#FFE", "#577", "#E34", "#C60", "#A80", "#890", "#2A9", "#28C", "#77D", "#C4B" ]
    },
    { "name": "dark"
    , "colors": [ "#022", "#AA9", "#E34", "#C60", "#A80", "#890", "#2A9", "#28C", "#77D", "#C4B" ]
    }
  ]
}
```

</details>

A mini-post about a mini colour-scheme. That's it! 🎉
