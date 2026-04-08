---
layout: post
title: Coding agents for old people
---

It is 2026 and Large Language Models are indispensable for software development.

I've long resisted agentic flows, save for [Google Jules](https://jules.google.com/), which I estimate will be sunsetted about Thursday. It's a pity, because Jules is great: it works in an isolated environment and hands you a pull request. Code in, diff out.

These days, everyone and their dog uses [Claude Code](https://claude.com/product/claude-code). This is a pity, because it sucks: it's an unstable, steaming pile of vibe-coded bloat. It's closed source, though the source code just leaked the other day.

I've reluctantly started using [Gemini CLI](https://geminicli.com/) at work so as not to be left too far behind. It's smaller than Claude Code and also open source, so you can at least have a general idea about what it's doing.

Still, operational transparency of all of the above is low. I'm old and value simplicity and stability.

Here's a prediction: despite the name, the coding agent space will be devoured by [Pi](https://pi.dev/) (website also available at [shittycodingagent.ai](https://shittycodingagent.ai/)). Why? Because Mario Zechner showed supremely good taste and made all the right calls:

1. Mario is a caring individual, not a startup selling out next Monday or going bust on Tuesday.
2. Pi is minimalist and conceptually simple.
3. Pi shows you the number of tokens sent and received per session. Also the current context length. Trivial stuff.
4. History is a tree, not a list. Branch off wherever you like. Quite an obvious feature.
5. Model-agnostic. And you can switch models mid-session, because why not?
6. Self-extending with hot-reload. Ok, fancy!
7. It runs in YOLO mode. Confirmations are a comfortable lie. Mario says the problem is yet unsolved, but it ain't rocket science:
  - the way to avoid destruction is to run the agent in an isolated environment, and
  - the way to avoid exfiltration is not to give it access to sensitive data.

But really, what makes Pi great is the things it doesn't do and all the wrong decisions Mario hasn't made. Go read [pi.dev](https://pi.dev/) and Mario's [What I learned building an opinionated and minimal coding agent](https://mariozechner.at/posts/2025-11-30-pi-coding-agent/) post for more on that.

Mario self-identifies as old to explain his need for simplicity and stability. It clicked for me: I too am old. I predict the simple systems will eventually prevail over the complex ones. The future of code-production is bright, once things settle down and people find out what works and what doesn't.

I'm afraid I'm all out of tokens for now – good night.
