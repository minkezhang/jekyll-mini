# jekyll-mini
Minimalistic Jekyll theme using [mini.css](https://minicss.org).

jekyll-mini is focused on efficiently presenting large blocks of text, e.g.
technical documents, blogs, and creative writing websites.

See [jekyll-mini.blogzhang.com](https://jekyll-mini.blogzhang.com) for an
example website.

## Setup

```bash
git clone git@github.com:downflux/blog.git
git submodule update --init --recursive

# Update all submodules
git submodule update --remote --recursive
```

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
