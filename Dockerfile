FROM ruby:2.6-alpine

LABEL name="jekyll"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

VOLUME /site
WORKDIR /site

RUN apk --no-cache add build-base
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN gem install github-pages
RUN gem install jekyll-redirect-from
RUN gem install jekyll-seo-tag
RUN gem install jekyll-sitemap
RUN gem install jekyll-feed

ENTRYPOINT ["jekyll"]
CMD ["serve", "--host", "0.0.0.0", "--livereload"]

# TODO: make SSL work with volumes
# CMD ["serve", "--host", "0.0.0.0", "--livereload", "--ssl-key", "ssl/localhost.key", "--ssl-cert", "ssl/localhost.crt"]

EXPOSE 35729
EXPOSE 4000
