# AGENTS.md

This file tells automation agents how to build, test, lint and deploy this
project.

## Style Instructions


## Development

Set up the project with the templates for development site like so:

```sh
git submodule update --init
go install github.com/gohugoio/hugo@latest
```

You can run Hugo to build the HTML and other content for the site to test
changes like so:

```
hugo
```

With Docker compose running validate pages rendered with the HTML validator for
quality like so (reads files from the public directory):

```
./validate-page.sh content/blog/post/example-filename.md
```

## Formatting Instructions

When writing Markdown files, try to keep the contents of Markdown files inside
of an 80 character limit unless if shortening the line would break formatting,
such as for hyperlinks with long URLs.

When writing blog posts, pay close attention to the TOML data at the top of
files and try not to invent new keys. Use only what you've seen before in the
repository. For example:

```
---
type: post
title: An Article Title
author: Andrew Wray
subtitle: A subtitle for an article
date: 1970-01-01
summary: A short summary for an article
tags: ["example-tag-1", "example-tag-2"]
---
```

For `date` be sure to write in today's date in ISO-8601 format. For `title` be
sure to write titles in Associated Press style titlecase format.
