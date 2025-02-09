---
layout: post
title: Digital gardening
---

During the past few years I've gone through some effort to keep my digital life simpler and more orderly than my real life.

- Migrated from Ubuntu to Debian. Been a breeze. Debian is like Ubuntu without the bad parts. I [blogged about still actually being happy with Ubuntu](/oh-ubuntu/), but am even happier with Debian. The Debian repos mostly move faster than I notice things. While I'd sometimes like to use a newer `neovim`, it's not a big issue. I enjoy the stability and the feeling that my system belongs to me again.
- Migrated from Dropbox to Syncthing. Syncthing gives me headaches, but fewer than Dropbox. Oh well...
- Migrated from LastPass to KeePassXC. Passwords are too important to outsource to a for-profit. LastPass wasn't the right for-profit anyway.
- All the websites I maintain now self-host all the css/js/fonts. I try to avoid Bootstrap and other large dependencies anyway.
- My content websites mostly use [Markdown](https://daringfireball.net/projects/markdown/) and [Jekyll](https://jekyllrb.com/). Markdown might be a terrible format, but it's good enough for me. Jekyll works for now, if it stops working, I can rewrite the parts I need in a language of choice in about an afternoon.
- Stick with [Elm](https://elm-lang.org/) for my side projects and avoid backend like the plague. I almost started learning OCaml. And Janet. And Zig. And Roc and Gleam. But for now, if I need a backend, I'll swallow the ten thousand string types, the exorbitant size of `~/.stack/`, the slow compile times, and reluctantly use Haskell ¯\\\_(ツ)\_/¯
- I rewrote most (all?) of my favicons into hand-crafted SVG. Inkscape output is verbose and an unreadable mess. Hand-written SVG can be beautiful.

Here's my tsumego collections favicon, followed by its source:

<p style="text-align:center;">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 8 8" width="50%" height="auto">
<defs>
<filter id="blur">
	<feGaussianBlur in="SourceGraphic" stdDeviation="0.1"/>
</filter>
<radialGradient id="stripes" gradientTransform="translate(-4, -1) scale(6, 4)">
	<stop offset="40%" stop-color="#EEE"/>
	<stop offset="43%" stop-color="#CCC"/>
	<stop offset="44%" stop-color="#EEE"/>

	<stop offset="45%" stop-color="#EEE"/>
	<stop offset="48%" stop-color="#CCC"/>
	<stop offset="49%" stop-color="#EEE"/>

	<stop offset="50%" stop-color="#EEE"/>
	<stop offset="53%" stop-color="#CCC"/>
	<stop offset="54%" stop-color="#EEE"/>

	<stop offset="55%" stop-color="#EEE"/>
	<stop offset="58%" stop-color="#CCC"/>
	<stop offset="59%" stop-color="#EEE"/>

	<stop offset="60%" stop-color="#EEE"/>
	<stop offset="63%" stop-color="#CCC"/>
	<stop offset="64%" stop-color="#EEE"/>

	<stop offset="65%" stop-color="#EEE"/>
	<stop offset="68%" stop-color="#CCC"/>
	<stop offset="69%" stop-color="#EEE"/>

	<stop offset="70%" stop-color="#EEE"/>
	<stop offset="73%" stop-color="#CCC"/>
	<stop offset="74%" stop-color="#EEE"/>
</radialGradient>
<radialGradient id="edges">
	<stop offset="80%" stop-color="#FFF0"/>
	<stop offset="100%" stop-color="#0003"/>
</radialGradient>
<radialGradient id="highlight" gradientTransform="translate(-0.15 -0.15)">
	<stop offset="0%" stop-color="#FFF"/>
	<stop offset="20%" stop-color="#FFF"/>
	<stop offset="50%" stop-color="#FFF0"/>
</radialGradient>
</defs>

<circle cx="4.1" cy="4.1" r="3.8" fill="#000C" filter="url(#blur)"/>
<circle cx="4" cy="4" r="3.8" fill="url(#stripes)" />
<circle cx="4" cy="4" r="3.8" fill="url(#edges)" />
<circle cx="4" cy="4" r="3.8" fill="url(#highlight)" />
</svg>
</p>

```
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 8 8" width="64px" height="64px">
<defs>
<filter id="blur">
	<feGaussianBlur in="SourceGraphic" stdDeviation="0.1"/>
</filter>
<radialGradient id="stripes" gradientTransform="translate(-4, -1) scale(6, 4)">
	<stop offset="40%" stop-color="#EEE"/>
	<stop offset="43%" stop-color="#CCC"/>
	<stop offset="44%" stop-color="#EEE"/>

	<stop offset="45%" stop-color="#EEE"/>
	<stop offset="48%" stop-color="#CCC"/>
	<stop offset="49%" stop-color="#EEE"/>

	<stop offset="50%" stop-color="#EEE"/>
	<stop offset="53%" stop-color="#CCC"/>
	<stop offset="54%" stop-color="#EEE"/>

	<stop offset="55%" stop-color="#EEE"/>
	<stop offset="58%" stop-color="#CCC"/>
	<stop offset="59%" stop-color="#EEE"/>

	<stop offset="60%" stop-color="#EEE"/>
	<stop offset="63%" stop-color="#CCC"/>
	<stop offset="64%" stop-color="#EEE"/>

	<stop offset="65%" stop-color="#EEE"/>
	<stop offset="68%" stop-color="#CCC"/>
	<stop offset="69%" stop-color="#EEE"/>

	<stop offset="70%" stop-color="#EEE"/>
	<stop offset="73%" stop-color="#CCC"/>
	<stop offset="74%" stop-color="#EEE"/>
</radialGradient>
<radialGradient id="edges">
	<stop offset="80%" stop-color="#FFF0"/>
	<stop offset="100%" stop-color="#0003"/>
</radialGradient>
<radialGradient id="highlight" gradientTransform="translate(-0.15 -0.15)">
	<stop offset="0%" stop-color="#FFF"/>
	<stop offset="20%" stop-color="#FFF"/>
	<stop offset="50%" stop-color="#FFF0"/>
</radialGradient>
</defs>

<circle cx="4.1" cy="4.1" r="3.8" fill="#000C" filter="url(#blur)"/>
<circle cx="4" cy="4" r="3.8" fill="url(#stripes)" />
<circle cx="4" cy="4" r="3.8" fill="url(#edges)" />
<circle cx="4" cy="4" r="3.8" fill="url(#highlight)" />
</svg>
```

Little wins for simplicity. They make me happy.
