FROM ruby:2.6-alpine

LABEL name="jekyll"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

VOLUME /site
WORKDIR /site

RUN apk --no-cache add build-base git

RUN gem install --no-document github-pages

RUN rm -rf /usr/lib/ruby/gems/*/cache/*.gem

EXPOSE 4000
EXPOSE 35729

ENTRYPOINT ["jekyll"]
CMD ["serve", "--host", "0.0.0.0", "--livereload", "--incremental"]

# TODO: make SSL work with volumes
# CMD ["serve", "--host", "0.0.0.0", "--livereload", "--ssl-key", "ssl/localhost.key", "--ssl-cert", "ssl/localhost.crt"]
