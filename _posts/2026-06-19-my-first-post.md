---
layout: post
title: "My First Post"
date: 2026-06-19
---

It's finally here, and it was not easy.

While I was creating this site, I had to go through some debugging because of
unexpected problems. Specifically, this website is built using a SSG[^1] called
Jekyll and is hosted on GitHub Pages. There's a [guide][jekyll-guide] on how to
get that to work.

In order to mimic the GitHub Pages environment, I had to get the `github-pages`
gem[^2] to work. However, this gem brings in a lot of other gems with it, and
some of those gems were not happy with my selection of Ruby.

Why? Because Ruby underwent some significant changes in its past. So I tried to
make it work anyway, and went down a rabbit hole, one error at a time. To list
it out:

- Ruby 3.0 apparently [does not work][pathutil] with the `pathutil` gem.
- Ruby 3.2 removed the `taint`, `untaint` and `tainted?` methods.
- Ruby 3.4 removed the `csv` and `bigdecimal` gems from its default gem set.

And to solve these issues:

- The link contains a line to add to the Gemfile for the `pathutil` gem.
- I 'Monkey Patched' these methods back with a Ruby file for now.
- Simply readding the gems separately to the Gemfile is enough.

Finally, I could develop my site locally, and here we are. Alternatively,
downgrading to Ruby 3.1.2 also worked for me without having to do the above.
If you want to use the latest version of Ruby, however, the steps above should
work until the gem is updated.

---
[^1]: Static Site Generator
[^2]: Ruby concept for packages with something extra

[jekyll-guide]: https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll
[pathutil]: https://stackoverflow.com/questions/66113639/jekyll-serve-throws-no-implicit-conversion-of-hash-into-integer-error
