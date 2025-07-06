---
type: post
title: OpenAPI Spec Converter
author: Andrew Wray
subtitle: Easily convert between Swagger, OpenAPI 3.0, and OpenAPI 3.1
summary: Introduction of the openapi-spec-converter tool.
date: 2025-03-07
tags: ["openapi", "docker"]
---

Dense Analysis is excited to introduce `openapi-spec-converter`, a powerful FOSS
tool designed to simplify the conversion of API specifications between Swagger,
OpenAPI 3.0, and OpenAPI 3.1 formats.

Now available on
[GitHub](https://github.com/dense-analysis/openapi-spec-converter) and [Docker
Hub](https://hub.docker.com/r/denseanalysis/openapi-spec-converter),
`openapi-spec-converter` makes it easy for developers to standardize and migrate
their API specifications with minimal effort.

## Instructions

With a simple command, users can convert their JSON and YAML-based
specifications:

```
docker run --rm -i openapi-spec-converter:latest < yourspec.json > newspec.json
```

The tool allows users to specify the target format using the `-t` option,
supporting conversions to **Swagger (`swagger`)**, **OpenAPI 3.0 (`3.0`)**, and
**OpenAPI 3.1 (`3.1`)**. By default the converter will output a 3.1 spec.

YAML or JSON output can be specified by setting `-f yaml` or `-f json`. By
default the converter will output JSON.

## Contributing

`openapi-spec-converter` is part of Dense Analysis’s commitment to improving
developer workflows and fostering inter-operability in API development.

For more details and contributions, visit the [GitHub
repository](https://github.com/dense-analysis/openapi-spec-converter).
