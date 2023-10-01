---
title: DAFT
subtitle: The "Dense Analysis Functional Toolkit"
---

Dense Analysis maintains and also recommends a suite of FOSS tools for building
computer software in what we consider will provide the best possible experience
for developers. This suite of tools we call the "Dense Analysis Functional
Toolkit," or **"DAFT"** for short. In this page, we will list the software we
recommend and why.

## Vim / Neovim

We recommend [Vim](https://www.vim.org/) or [Neovim](https://neovim.io/) as your
text editor and development environment of choice. There are countless IDEs and
text editors available to users. We believe only variants of Vim and
[Emacs](https://en.wikipedia.org/wiki/Emacs) provide a level of customization
and long term support to users that make them capable of acting as a developer's
true swiss army knife. Vim's learning curve can seem somewhat steep at first,
but we believe once a user is familiar with it, they won't want to use anything
else.

For the best experience in Vim with regards to font support and ease of use, you
may prefer to use GVim, which can be downloaded from [the Vim
page](https://www.vim.org/download.php) or installed with your package manager
of choice. On macOS, the best experience may be provided by
[MacVim](https://macvim.org/).

For a graphical Neovim experience, you may prefer to use
[Neovide](https://neovide.dev/). Note that Dense Analysis does not yet consider
Neovim a stable development environment, but the improved feature set can
outweigh the cost of adjusting to subtle breaking changes.

## ALE

[ALE](https://github.com/dense-analysis/ale) is Dense Analysis' plugin for Vim
and Neovim for providing code linting, static analysis, code fixing, and a
limited set of IDE-like features via [Language Server
Protocol](https://microsoft.github.io/language-server-protocol/). ALE is
designed to improve a user's experience while working on code or even text
files, primarily to make problems more obvious so they can be solved more
quickly. We highly recommend using ALE work working on code.

## Neural

[Neural](https://github.com/dense-analysis/neural) is Dense Analysis' plugin for
Vim and Neovim for integrating the editing experience with [large language
models](https://en.wikipedia.org/wiki/Large_language_model) such as OpenAI's
GPT, for code generation and more. Neural helps users automate work tasks, and
works well in combination with ALE for spotting problems in generated code.
