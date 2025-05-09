# jekyll-mini
Minimalistic Jekyll theme using [mini.css](https://minicss.org).

jekyll-mini is focused on

1. efficiently presenting large blocks of text; and
1. affording the separation of *content* from *metadata*.

See [jekyll-mini.blogzhang.com](https://jekyll-mini.blogzhang.com) for an
example website.

## Features

* Separate Markdown files from YAML metadata -- Markdown files may be symlinks
  to a dependent submodule.
* Automatic titles from Markdown H1 headings.
* File-specific assets -- files may be placed in a directory alongside the post
  to preserve any relative links used in the Markdown file.
* Automatic relative URL conversion in RSS feeds --

  ```markdown
  ![Some Image](assets/foo.jpg)
  [some reference](#anchor)
  ```

  will be converted into
  ```html
  <img src="https://foo.com/posts/2020/02/12/some-post/assets/foo.jpg" />
  <a href="https://foo.com/posts/2020/02/12/some-post/#anchor">some reference</a>
  ```
  in the RSS feed.

## Setup

```bash
git@github.com:minkezhang/jekyll-mini.git
git submodule update --init --recursive

# Update all submodules
git submodule update --remote --recursive
```

**N.B.**: In order to use the included deployment [Action](.github/workflows/publish.yml),

1. Copy the file to the new repo
1. Set the `TOKEN` repo secret with `workflow` permissions
1. In the repo settings, set `Pages >> Build and deployment >> Source` to `GitHub Actions`

## Submodules

```bash
# Add submodule
git submodule add -b ${BRANCH} ${REPO} third_party/${LOCAL_DIR_PATH}

# Remove submodule
# See https://stackoverflow.com/a/29850245
git submodule deinit ${MODULE}
git rm ${MODULE}
```

## Local Build

Sometimes we should install the environment locally to help debug development.

See
https://jekyllrb.com/docs/installation/,
https://jekyllrb.com/docs/ruby-101/

```bash
# Copy files instead of symlinks when JEKYLL_ENV == production.
JEKYLL_ENV=production; bundle exec jekyll clean && bundle exec jekyll serve
```
