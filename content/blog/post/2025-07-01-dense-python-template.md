---
type: post
title: Introducing dense-python
author: Andrew Wray
subtitle: A convenient template for new Python projects
date: 2025-07-06
summary: The dense-python repository provides a reusable template for starting Python projects quickly.
tags: ["python", "template"]
---

Dense Analysis has released
[dense-python](https://github.com/dense-analysis/dense-python), a template
repository designed to help developers spin up new Python projects with minimal
setup. The repository collects a set of best practices used across Dense
Analysis projects and packages them into a starting point you can clone and
modify.

Available on [GitHub](https://github.com/dense-analysis/dense-python), the
template comes preconfigured with modern tooling for formatting, linting, static
type checks, and continuous integration. By cloning the repository and
customizing it for your work, you can skip much of the boilerplate configuration
typically required when starting from scratch.

### Distroless Python containers

For containerized deployments, `dense-python` includes a reproducible build
pipeline that produces distroless images. Distroless containers ship only the
Python runtime and your project code, resulting in smaller and more secure
images than traditional distributions. The provided `Dockerfile` demonstrates
how to compile wheels with the `uv` build tool and copy them into the final
distroless image. Read more about the advantages in [this article on distroless
Python images](https://alex-moss.medium.com/creating-an-up-to-date-python-distroless-container-image-e3da728d7a80).

### Testing with Network Isolation By Default

The template configures **pytest** so that tests run with socket access disabled
by default. This makes it easy to catch accidental network calls in unit tests.
Strict marker checking is also enabled, ensuring that every custom marker is
declared in your configuration. You can decorate tests with
`@pytest.mark.allow_network` to enable network access for them explictly.
Together, these settings help keep tests fast and deterministic.

### Pyright Type Checking

Static type checking is handled by
[**Pyright**](https://github.com/microsoft/pyright), the engine behind
[Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
in VSCode and also used by [Cursor](https://cursor.com). It offers quick
feedback on type annotations without slowing down development. A ready-to-use
`pyproject.toml` configuration is included so that type errors are caught early.
As ever Dense Analysis recommends using [the
DAFT](https://denseanalysis.org/projects/daft/) for programming over proprietary
editors, but they may also be easily configured.

### Package Builds with uv

Instead of naked `pip`, `dense-python` relies on the lightning-fast
[uv](https://github.com/astral-sh/uv) tool to create virtual environments and
build distribution packages. This speeds up the packaging process and ensures
consistent builds across platforms.

### Open for Contributions!

`dense-python` is FOSS and welcomes contributions. If you find a useful
improvement or fix, open a pull request or start a discussion on the project
page. We hope this template saves you time on setup so you can focus on writing
code.
