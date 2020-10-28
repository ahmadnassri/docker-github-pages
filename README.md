# GitHub Pages Jekyll Container

a Jekyll container with all the officially included plugins so you can run locally.

[![license][license-img]][license-url]
[![release][release-img]][release-url]
[![super linter][super-linter-img]][super-linter-url]
[![semantic][semantic-img]][semantic-url]

[![size][size-img]][size-url]
[![docker][docker-img]][docker-url]
[![github][github-img]][github-url]

# GitHub Pages Jekyll Container

### Included plugins:

Includes the same plugins as the ones [included with GitHub Pages](https://help.github.com/en/github/working-with-github-pages/about-github-pages-and-jekyll#plugins):

  - `jekyll-coffeescript`
  - `jekyll-default-layout`
  - `jekyll-gist`
  - `jekyll-github-metadata`
  - `jekyll-optional-front-matter`
  - `jekyll-paginate`
  - `jekyll-readme-index`
  - `jekyll-titles-from-headings`
  - `jekyll-relative-links`

## Usage

create a `docker-compose.yml` with the following:

``` yaml
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
> 
> Map the the directory where Jekyll will read files to `/site`

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

[license-url]: LICENSE
[license-img]: https://badgen.net/github/license/ahmadnassri/docker-github-pages

[release-url]: https://github.com/ahmadnassri/docker-github-pages/releases
[release-img]: https://badgen.net/github/release/ahmadnassri/docker-github-pages

[super-linter-url]: https://github.com/ahmadnassri/docker-github-pages/actions?query=workflow%3Asuper-linter
[super-linter-img]: https://github.com/ahmadnassri/docker-github-pages/workflows/super-linter/badge.svg

[semantic-url]: https://github.com/ahmadnassri/docker-github-pages/actions?query=workflow%3Arelease
[semantic-img]: https://badgen.net/badge/📦/semantically%20released/blue

[size-url]: https://hub.docker.com/r/ahmadnassri/github-pages
[size-img]: https://badgen.net/docker/size/ahmadnassri/github-pages

[docker-url]: https://hub.docker.com/r/ahmadnassri/github-pages
[docker-img]: https://badgen.net/badge/icon/docker%20hub?icon=docker&label

[github-url]: https://github.com/users/ahmadnassri/packages/container/package/github-pages
[github-img]: https://badgen.net/badge/icon/github%20registry?icon=github&label
