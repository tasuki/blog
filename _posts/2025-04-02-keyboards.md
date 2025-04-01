---
layout: post
title: Keyboards
---

Why is the Czech keyboard such a mess? QWERTZ/QWERTY is still a topic. The letters with the diacritical marks (`ěščřžýáíé`) are on the numeric top row, in place of `234567890`. All the other stuff is shuffled around compared to the US English keyboard.

Everyone suffers: the "regular people" use QWERTZ. Many computer literate people prefer QWERTY, and some prefer the English keyboard and type without diacritics. Sit a random Czech at a random Czech keyboard and it's likely they'll feel lost.

Why don't we learn from Poland? the 40 million Poles use a simple superset of the US English keyboard. From [Wikipedia](https://en.wikipedia.org/wiki/QWERTY#Polish):

> \[T\]he "Polish programmer's" layout has become the de facto standard, used on virtually all computers sold on the Polish market.
>
> Most computer keyboards in Poland are laid out according to the standard US visual and functional layout. Polish diacritics are accessed by using the AltGr key with a corresponding similar letter from the base Latin alphabet. Normal capitalization rules apply with respect to Shift and Caps Lock keys. For example, to enter "Ź", one can type ⇧ Shift+AltGr+X with Caps Lock off, or turn on Caps Lock and type AltGr+X.

No wonder Poland has been experiencing the biggest economic boom in Europe for the past 20 years. Without keyboard woes, they are supremely productive.

When I started working in Czechia again, I was quickly overwhelmed by the constant need to switch between the Czech keyboard for messaging and Polish (ie English) for programming, the main problem was I'd always thought the other layout was being active. I didn't find any of the choices from [xkb config](https://gitlab.freedesktop.org/xkeyboard-config/xkeyboard-config/-/blob/master/symbols/cz) suitable. I stumbled upon [CShack](http://xakru.com/cshack/) and liked it, with the only exception I want to keep my CapsLock, as I've mapped it to Ctrl, and use it all the time.

So now I can type `á` by pressing `AltGr+a` and `Ó` by pressing `AltGr+Shift+o`. I've [reclaimed my sanity](https://github.com/tasuki/dotrc/blob/50db86/.config/xkb/symbols/cshack).

