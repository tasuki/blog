---
layout: post
title: Thoughts on representing variations and commenting on them
---

This is an exploratory post, trying to gather my thoughts on the topic and kindly requesting feedback.

I enjoy playing abstract board games: Go, TwixT, Hex, etc. I play [Go on a torus board][torus] and [TwixT] on [large boards][large]. After playing a game, it's helpful to be able to discuss what went right, what went wrong, and what could be improved. This is best done in the real world, but there are some wonderful facilities to do it online too. These use different ways to comment on games and show variations.

[torus]: https://senseis.xmp.net/?ToroidalGo
[TwixT]: https://en.wikipedia.org/wiki/TwixT
[large]: https://www.littlegolem.net/jsp/ld/tournament.jsp?trnid=twixt.ld.SIZE48

The three ways I've seen to comment on games and show variations/branches (do have a look at the linked examples; they're much clearer than my explanations):

1. The usual tree of moves (nodes) with comments on any node. Most popular, used by eg [EidoGo], [KGS], and [Sabaki]. Henceforth "tree".
2. A linear sequence of moves, with comments on any node creating expandable variations inline. Seen used only on [GoKibitz]. Henceforth "inline variations".
3. A linear sequence of moves, with a global linear sequence of comments. Each comment can show an arbitrary number of variations starting from any move. Seen used only on [TwixT Commentator]. Henceforth "global comments".

[KGS]: https://gokgs.com/
[EidoGo]: http://eidogo.com/#1GwdcSWgx
[Sabaki]: https://sabaki.yichuanshen.de/
[GoKibitz]: https://gokibitz.com/kifu/rytlZL24j?path=7
[TwixT Commentator]: http://twixt-commentator.duckdns.org/game/2226218

The **tree** is the most ubiquitous, and I'm sure it's the best if you want to analyze a game extremely thoroughly. The main drawback is that it's not obvious in which order you should visit the variations and read the comments.

The **inline variations** allow you to go through the game and see the variations from each move as you visit it. If there are more comments by different people on these variations, they will be ordered by time and easily skimmable. I feel this is the better user experience than the tree, perhaps unless the variations are extremely numerous with a lot of branching (in which case no one will understand them anyway).

The **global comments** take inline variations to the extreme. It is a true conversation between people, you can see all the comments at once and choose which variations you want to explore based on the words that accompany them. I like this system a lot, though I guess it's suited for light commentary and might fall apart for particularly heavily commented games.

Which one is the best depends on the use case. Analysing a situation to death requires different tools than two casual comments after the game. Still, I'm leaning towards the **inline variations**. They're simple, and should be easy to convert to **global comments**, and also it should be easy to display the **full tree** from them. Appears to me like the most flexible solution, leaving the most doors open. (Not necessarily saying opening those doors is a good idea.)
