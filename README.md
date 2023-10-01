# denseanalyis.org

The Dense Analysis website built with [Hugo](https://gohugo.io/) to generate the
entire site as static content. The site is served as static content to keep
maintenance costs low, to improve performance, and to increase security.

This project uses an AGPL licence to ensure that it will always be available for
those who need it.

## Development

[Install Hugo](https://gohugo.io/installation/) via any means appropriate for
your system. There are packages available for every major Linux distribution,
for example. Make sure you have [git](https://git-scm.com/) and
[Git LFS](https://git-lfs.com/) installed.

Once tools are installed, simply run `hugo server` to see a live development
version of the website. You can run `hugo` to build a `public` directory you
can `rsync` or otherwise copy and serve via nginx or Apache. See the rest of the
[Hugo documentation] for knowledge on how to build sites with Hugo.

For example, you might `rsync` the files like so:

```
rsync -auv public/ user@hostname:~/denseanalysis-org/
```
