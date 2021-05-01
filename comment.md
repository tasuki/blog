---
layout: page
title: How to comment?
comments:
  - author: tasuki
    author_url: https://tasuki.org/
    date: 2020-02-02
    content: |
      This is *a comment*. An empty line creates a paragraph, like this...

      We've got [Markdown](https://guides.github.com/features/mastering-markdown/) formatting,
      specifically the [kramdown](https://kramdown.gettalong.org/) flavour.
      You <em>can</em> also just use basic html if you like.

      Make sure to start the content part with `content: |` for yaml not to mangle things up.
  - author: tasuki
    author_url: https://tasuki.org/
    date: 2020-11-11
    content: |
      This is a comment from a special day. Yay!
---

There are two ways to add comments, the lazy one and the hard one. The end result will be the same -- after I approve your comment, it'll appear under the blog post.

### Comment the lazy way

Write the comment, and [send it to me](https://tasuki.org/) using email, Face book, Keybase, KGS, or any other thing I read.

...and... tell me to publish it? If you don't do that, I [won't just randomly quote you](http://127.0.0.1:4000/high-poetry/) in a blog post!

### Comment the hard way

1. Click the "Add your comment" link under a blog post (or try it on this very page!).
2. Follow the [steps to edit files in another user's repository](https://docs.github.com/en/github/managing-files-in-a-repository/editing-files-in-another-users-repository).
3. If there is a `comments` section in the post's front matter, add a comment at the bottom of it, otherwise create one. Here's a sample with two comments:

    ```
    comments:
      - author: tasuki
        author_url: https://tasuki.org/
        date: 2020-02-02
        content: |
          This is *a comment*. An empty line creates a paragraph, like this...

          We've got [Markdown](https://guides.github.com/features/mastering-markdown/) formatting,
          specifically the [kramdown](https://kramdown.gettalong.org/) flavour.
          You <em>can</em> also just use basic html if you like.

          Make sure to start the content part with `content: |` for yaml not to mangle things up.
      - author: tasuki
        author_url: https://tasuki.org/
        date: 2020-11-11
        content: |
          This is a comment from a special day. Yay!
    ```
