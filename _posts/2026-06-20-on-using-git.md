---
layout: post
title: "On Using Git Effectively"
date: 2026-06-20
---

[Git][git] is an open source version control system, one that I've been having trouble
utilising effectively.

## Commits

In university, we had an introductory course to Git. It covered the basics, and
because we also had a programming course, we could apply the learned knowledge
right away. The issue was that I was versioning my code for myself, and only
myself. Surprisingly, when you version for yourself, you tend to take shortcuts.
How often do you see a commit that talks about one thing, but when you check
what's changed, it actually does *two* things? Or commit messages that aren't
there to help the future maintainers understand the code?

Recently, I've read a very helpful [article][commit] on this topic. At one
point, I stumbled upon something called the **Conventional Commits** specification.
My commits looked like `feat: add lombok config file`. This
style helped me and my peers in a team project, because it forced us to classify
changes. Were they features? Fixes? Consider the example I wrote out, though.
Some changes were hard to classify. The commit would have been just as clear,
maybe more so, if it had read `Add the lombok config file to the project's root`.
Since we weren't automating releasing and semantic versioning, we did not make
use of the prefixes. Now, if I had to work in a team again, I'd consider my
options and what could benefit us the most *before* writing lines of code.

The article above offers a useful tip. Your commit message should complete the
following sentence:

> If applied, this commit will...

## Teamwork

A bigger habit to kick, and something that I'm still learning, was deciding how
big commits and PR's (or MR's) should be. Have you seen a 500 line PR? How about
a 2000 line PR? In my experience, the former can be revised much easier than the
latter. The exact number depends a lot on experience and what the actual changes
are about. In the age of AI agents, this can be a bit of a pickle, because that
500 line PR might not solve the entire problem, but only a part of it. This is
what I call **restraint**. In my projects, I think about the least experienced
colleague who will be involved in a given PR (or MR etc.) and tailor my approach so
they can participate in the process and learn, too.

It's not just about the line count, but the content, too. It's tempting to look
at a typo or a very simple QoL change while working on something unrelated and
cave in and just throw it into a commit. Your future you will thank you if you
note the change down instead and do it later.

## Parting Words

I hope after reading this post, your `Fix typo in blog` commit won't contain a
security patch.

[git]: https://git-scm.com/
[commit]: https://cbea.ms/git-commit/
