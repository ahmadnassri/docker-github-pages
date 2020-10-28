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
