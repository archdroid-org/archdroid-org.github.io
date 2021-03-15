# [Archdroid] website

The website is built using [Jekyll]. [Node.js] is used to compile
all static assets including the [Bootstrap] library and built on
along with the [SASS] stylesheets. Most of the content on the website is
written using [Markdown].
Icons are provided by [Font Awesome], favicons by [Favicon Generator].
Language translations are provided using [JQuery Localize].

## Local Build Quick-start Guide

- Install `ruby` and `yarn`
- Use the automatic setup via `site run`

or manually:

```sh
$ gem update
$ gem install bundler
$ yarn --no-bin-links
$ yarn dist
$ bundle exec jekyll serve --watch --host 0.0.0.0
```

The local website should be available at <http://localhost:4000/>

[Bootstrap]:         http://getbootstrap.com/
[Favicon Generator]: https://realfavicongenerator.net/
[Font Awesome]:      http://fontawesome.io/
[Jekyll]:            http://jekyllrb.com/
[JQuery Localize]:   https://github.com/coderifous/jquery-localize/
[Archdroid]:         https://archdroid-org.github.io/
[Markdown]:          https://daringfireball.net/projects/markdown/
[Node.js]:           http://nodejs.org/
[SASS]:              https://sass-lang.com/
