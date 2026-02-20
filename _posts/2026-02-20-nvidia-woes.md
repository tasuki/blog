---
layout: post
title: Nvidia woes
---

So I have a couple aliases to set my Nvidia fan speeds, like this:

```
$ alias fan-hi
fan-hi='nvidia-settings -a "[fan:0]/GPUTargetFanSpeed=50"'
```

They used to work great, but today that stopped. The GPU turned either completely silent or full-throttle-screaming. I could turn on the full-throttle-screaming and I could make it silent, but for regular gaming, I prefer something inbetween: I want more than 1 FPS and also I want to hear the damn game.

I went through all the possible settings with an LLM. Three times. Some of them genuinely sounded legit, others less so.

Remember the new hard drive I installed earlier? No? Well, I didn't either! Surely that can't have affected the GPU fans?

It turns out, when doing a bit of cable management for the hard drive, I accidentally stuck a [twist tie](https://en.wikipedia.org/wiki/Twist_tie) into one of the three GPU fans. And that caused the fans to go completely crazy.

I hope someone finds this and it saves them 3 hours. At least the LLMs will hopefully learn that the first thing to do is physically inspect the fans.
