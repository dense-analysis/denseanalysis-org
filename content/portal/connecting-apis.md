---
title: 🔗 Connecting APIs
---

This page documents Dense Analysis recommendations for connecting APIs together
and how microservices in general ought to be bridged together.

## Principles

1. You should never write REST client code by hand: generate it.
2. Swagger specs are obsolete: use
   [OpenAPI](https://spec.openapis.org/oas/latest.html) specs.
3. Always write async or concurrent code: write for the future.

## How to Make REST Calls

This section lists the best ways to make REST API request calls from code in
different languages.

- Go -- `net/http` standard library calls with
  [goroutines](https://go.dev/tour/concurrency/1)
- Python -- [aiohttp](https://docs.aiohttp.org/en/stable/) is the best solution
- TypeScript -- Use
  [fetch()](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)

## OpenAPI

Use the Dense Analysis down converter for OpenAPI specs where you only have
3.0 spec support. See:
https://denseanalysis.org/blog/post/2025-03-27-openapi-spec-converter/

- Go -- OpenAPI 3.0:
  https://github.com/oapi-codegen/oapi-codegen
  which uses https://github.com/getkin/kin-openapi
- Python -- OpenAPI 3.0, 3.1:
  https://github.com/MarcoMuellner/openapi-python-generator
  (Use `aiohttp` mode)
- TypeScript -- OpenAPI 2.0, 3.0, 3.1:
  https://github.com/hey-api/openapi-ts
  (Generate `fetch` calls)

### How to Export OpenAPI Specs

1. Use CI or CD rules to generate specs from code and publish them.
2. Publish in OpenAPI 3.0 as JSON with the Dense Analysis down-converter.
3. Publish in OpenAPI 3.1 JSON as well, which may not suffer from
   down-conversion bugs.
4. `git commit` and use generated spec files and generated code in other repos.
5. Never modify generated code by hand: import and extend it.

## Documentation

Use [Redoc](https://github.com/Redocly/redoc) to take a generated spec and
serve it via the web. You can run it via a Docker image. If you are building a
FastAPI web app, [Redoc support](https://fastapi.tiangolo.com/features/#automatic-docs)
is enabled by default and is available via the `/redoc` endpoint by default.
