# Posts

Posts are crawled through recursively. Create subdirectories here if necessary
to organize posts. Symlink to `/assets/` dir as necessary for relative links.
Asset symlinks for posts require specific directories, per
[github.com/nhoizey/jekyll-postfiles](https://github.com/nhoizey/jekyll-postfiles).

## Front Matter Format

YAML fields, with defaults specified on
[jekyllrb.com](https://jekyllrb.com/docs/front-matter)

```yaml
---
# Built-in fields.
layout: post
categories: [blog, design doc]
tags: [architecture, game design]
permalink: /license/mit/
published: true

# Provided by jekyll-redirect-from.
redirect_from:
  - /path/to/old/link.html
redirect_to:
  - /path/to/new/link.html

# Custom fields.
preview: >-
  Manually written excerpt of the content.
social:
  name: Reddit
  url: https://reddit.com/...

# Unused fields.
title: Some Title
date: 1999-12-31 23:59:59 -0800
excerpt: >-
  Automatically generated excerpt of the content.
excerpt_separator: <!-- excerpt end -->
---
```
