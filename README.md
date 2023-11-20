# denseanalyis.org

The Dense Analysis website built with [Hugo](https://gohugo.io/) to generate the
entire site as static content. The site is served as static content to keep
maintenance costs low, to improve performance, and to increase security.

This project uses an AGPL licence to ensure that it will always be available for
those who need it.

## Development

Use Docker to run the site with [Hugo](https://gohugo.io/installation/).
[Docker Desktop](https://www.docker.com/products/docker-desktop/) is the easiest
to use on all platforms.

```
docker compose up
```

The site will be built into the `public` directory, which can be served via
nginx or Apache. See the rest of the
[Hugo documentation](https://gohugo.io/documentation/)
for knowledge on how to build sites with Hugo.
