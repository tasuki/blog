---
layout: post
title: On OCaml
---

I'm [always on the lookout for languages I'd enjoy programming in](/programming-language-2024/).

After a brief encounter, OCaml is somewhere in the upper right. Having heard bad things about OCaml tooling, I'm very positively surprised:

1. I find out there's [`opam`](https://opam.ocaml.org/): it manages OCaml and project dependencies.
2. This [`opam` is in my distro's repos](https://packages.debian.org/sid/opam).
3. During installation, it tells me it'd like to add something to my `~/.zshrc` or I can choose type a different file path if I'd like. Yes please![^zshrc-ask]
4. After this, `opam` has pleasant colours and shell completion in zsh. Whooosh.

[^zshrc-ask]: From my encounter with Python-land and Conda,[^conda] I'm used to things poking around my config files and changing them of their own volition. Never mind they'd ask for my opinion, or do something as useful as adding completion.
[^conda]: Conda is a mess, avoid. No one really knows the difference and/or the relationship between Conda, Anaconda, and Miniconda.
