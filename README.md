# GitHub Pages Jekyll Container

a Jekyll container with **all** the officially [included plugins][plugins] so you can run locally.

[plugins]: https://help.github.com/en/github/working-with-github-pages/about-github-pages-and-jekyll#plugins

## Flavors

The image is published to two registries:

- [Docker Hub](https://hub.docker.com/r/ahmadnassri/github-pages)
- [GitHub Package Registry](https://github.com/ahmadnassri/docker-github-pages/packages)

## Usage

create a `docker-compose.yml` with the following:

```yaml
version: '3'

services:
  jekyll:
    image: ahmadnassri/github-pages
    volumes:
      - $PWD:/site
    ports:
      - 4000:4000
      - 35729:35729
```

> #### Volumes
> Map the the directory where Jekyll will read files to `/site`

> #### Image
> For GitHub Package Registry, use `image: docker.pkg.github.com/ahmadnassri/github-pages/main`
