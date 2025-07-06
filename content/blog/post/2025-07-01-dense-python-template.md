---
type: post
title: Introducing dense-python
author: Andrew Wray
subtitle: A convenient template for new Python projects
date: 2025-07-01
summary: The dense-python repository provides a reusable template for starting Python projects quickly.
tags: ["python", "template"]
---

Dense Analysis has released **dense-python**, a template repository designed to help developers spin up new Python projects with minimal setup. The repository collects a set of best practices used across Dense Analysis projects and packages them into a starting point you can clone and modify.

Available on [GitHub](https://github.com/dense-analysis/dense-python), the template comes preconfigured with modern tooling for formatting, linting, static type checks, and continuous integration. By cloning the repository and customizing it for your work, you can skip much of the boilerplate configuration typically required when starting from scratch.

### Distroless Python containers

For containerized deployments, dense-python includes a reproducible build pipeline that produces distroless images. Distroless containers ship only the Python runtime and your project code, resulting in smaller and more secure images than traditional distributions. The provided `Dockerfile` demonstrates how to compile wheels with the `uv` build tool and copy them into the final distroless image. Read more about the advantages in [this article on distroless Python images](https://pythonspeed.com/articles/distroless-python/).

### Testing with network isolation

The template configures **pytest** so that tests run with socket access disabled by default. This makes it easy to catch accidental network calls in unit tests. Strict marker checking is also enabled, ensuring that every custom marker is declared in your configuration. Together, these settings help keep tests fast and deterministic.

### Pyright type checking

Static type checking is handled by [**Pyright**](https://github.com/microsoft/pyright), the engine behind Pylance in VS Code and also used by Cursor. It offers quick feedback on type annotations without slowing down development. A ready-to-use `pyrightconfig.json` is included so that type errors are caught early.

### Package builds with uv

Instead of `pip`, dense-python relies on the lightning-fast `uv` tool to create virtual environments and build distribution packages. This speeds up the packaging process and ensures consistent builds across platforms.

### Open for contributions

Dense-python is open source and welcomes contributions. If you find a useful improvement or fix, open a pull request or start a discussion on the project page. We hope this template saves you time on setup so you can focus on writing code.
