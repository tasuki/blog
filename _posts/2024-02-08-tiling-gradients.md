---
layout: post
title: Tiling gradients
---

<style>
.tile { border: 1px solid orange; float: left; margin: 9px; width: 100px; height: 100px; }
@keyframes animate-tile {
  0% { background-position: 0px 0px; }
  100% { background-position: -1000px -1000px; }
}
</style>

Here's a test. A simple diagonal gradient from white to black, first full size, then four tiles of the same, and lastly sixteen tiles:

<div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000);"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000); background-size: 25% 25%;"></div>
<div style="clear: both;"></div>
</div>

It does not tile very nicely. Neither does one which has white-black-white:

<div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF);"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF); background-size: 25% 25%;"></div>
<div style="clear: both;"></div>
</div>

And neither white-black-white-black one:

<div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000);"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000); background-size: 25% 25%;"></div>
<div style="clear: both;"></div>
</div>

But the following one does! White-black-white-black-white:

<div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000, #FFF);"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000, #FFF); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000, #FFF); background-size: 25% 25%;"></div>
<div style="clear: both;"></div>
</div>

Then for 6, 7, and 8 it again does not tile (showing just the four tile versions):

<div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000, #FFF, #000); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000, #FFF, #000, #FFF); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000); background-size: 50% 50%;"></div>
<div style="clear: both;"></div>
</div>

For sequence of 9 it tiles! And sequence of 13 too! And... umm, 17 again?

<div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000, #FFF); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000, #FFF); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000, #FFF, #000, #FFF); background-size: 50% 50%;"></div>
<div style="clear: both;"></div>
</div>

Proof by induction!

---

I'm sure this is like some very trivial mathematics. But I do not know it. And the grayscale is a little dreary, make it pop! Let's have three colours:

<div>
<div class="tile" style="background: #440154;"></div>
<div class="tile" style="background: #26828e;"></div>
<div class="tile" style="background: #fde725;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #26828e, #fde725);"></div>
<div style="clear: both;"></div>
</div>

Call them purple, teal, yellow. Unsurprisingly, the three colours don't tile when it's purple-teal-yellow (sequence of 3), neither purple-teal-yellow-purple (sequence of 4), neither purple-teal-yellow-purple-teal (sequence of 5), neither sequence of 6:

<div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #26828e, #fde725); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #26828e, #fde725, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #26828e, #fde725, #440154, #26828e); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #26828e, #fde725, #440154, #26828e, #fde725); background-size: 50% 50%;"></div>
<div style="clear: both;"></div>
</div>

But for sequence of 7 (purple-teal-yellow-purple-teal-yellow-purple) it tiles! Then for 13 and 19 and 25 it does too.

<div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154, #26828e, #fde725, #440154); background-size: 50% 50%;"></div>
<div style="clear: both;"></div>
</div>

---

Uh oh, let us take four colours now. Purple, blue, green, yellow.

> Green green, green green. Yellow? Yellow!

<div>
<div class="tile" style="background: #440154;"></div>
<div class="tile" style="background: #31688e;"></div>
<div class="tile" style="background: #35b779;"></div>
<div class="tile" style="background: #fde725;"></div>
<div style="clear: both;"></div>
</div>

For sequence of 4 the tiling doesn't work, but for sequence of 9 it does! And for 17 too, and 25.

<div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #31688e, #35b779, #fde725); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #31688e, #35b779, #fde725, #440154, #31688e, #35b779, #fde725, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #31688e, #35b779, #fde725, #440154, #31688e, #35b779, #fde725, #440154, #31688e, #35b779, #fde725, #440154, #31688e, #35b779, #fde725, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #31688e, #35b779, #fde725, #440154, #31688e, #35b779, #fde725, #440154, #31688e, #35b779, #fde725, #440154, #31688e, #35b779, #fde725, #440154, #31688e, #35b779, #fde725, #440154, #31688e, #35b779, #fde725, #440154); background-size: 50% 50%;"></div>
<div style="clear: both;"></div>
</div>

This looks very much like `2n + 1`

---

Five colours!

<div>
<div class="tile" style="background: #440154;"></div>
<div class="tile" style="background: #3e4a89;"></div>
<div class="tile" style="background: #26828e;"></div>
<div class="tile" style="background: #35b779;"></div>
<div class="tile" style="background: #b5de2b;"></div>
<div style="clear: both;"></div>
</div>

That'll be 11, 21, 31, 41, 51, ...

<div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154); background-size: 50% 50%;"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154, #3e4a89, #26828e, #35b779, #b5de2b, #440154); background-size: 50% 50%;"></div>
<div style="clear: both;"></div>
</div>

And lastly ten colours, with sequence of 21:

<div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #482878, #3e4a89, #31688e, #26828e, #1f9e89, #35b779, #6ece58, #b5de2b, #fde725);"></div>
<div class="tile" style="background: linear-gradient(135deg, #440154, #482878, #3e4a89, #31688e, #26828e, #1f9e89, #35b779, #6ece58, #b5de2b, #fde725, #440154, #482878, #3e4a89, #31688e, #26828e, #1f9e89, #35b779, #6ece58, #b5de2b, #fde725, #440154);"></div>
<div style="clear: both;"></div>
</div>

---

### Why 2n + 1 ?

This is perhaps too embarassingly simple to write a blog post about, but I found none *and* found a lot of people on the internet confused by their gradients not aligning.

The `n` here is the number of different colours in your gradient. The `2n + 1` is how many colours you need to include in your code.

The `+1` is simple: the last colour of the palette needs to be the same as the first, as they "touch" in the corner.

The `2n` is not that difficult either: when it was `n`, the corners touch just fine, but the sides are shifted by half against each other, not lining up. `2n` makes the sides line up, too.

### Bonus time?

Here, have an animated one:

<div style="border: 1px solid orange; height: 100px; animation: animate-tile 10s linear infinite; background: linear-gradient(135deg, #440154, #482878, #3e4a89, #31688e, #26828e, #1f9e89, #35b779, #6ece58, #b5de2b, #fde725, #440154, #482878, #3e4a89, #31688e, #26828e, #1f9e89, #35b779, #6ece58, #b5de2b, #fde725, #440154); background-size: 1000px 1000px;"></div>
