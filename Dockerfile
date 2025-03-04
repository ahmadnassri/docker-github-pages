# kics-scan disable=67fd0c4a-68cf-46d7-8c41-bc9fba7e40ae

FROM ruby:3.4.2-alpine

LABEL name="jekyll"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

VOLUME /site
WORKDIR /site

RUN apk --no-cache add build-base=0.5-r3 git=2.36.6-r0

COPY Gemfile .
RUN gem install -g

# hadolint ignore=DL3059
RUN apk del build-base git
# hadolint ignore=DL3059
RUN rm -rf /usr/lib/ruby/gems/*/cache/*.gem

EXPOSE 4000
EXPOSE 35729

# hadolint ignore=DL3002
USER root

HEALTHCHECK NONE

ENTRYPOINT ["jekyll"]
CMD ["serve", "--host", "0.0.0.0", "--livereload"]

# TODO: make SSL work with volumes
# CMD ["serve", "--host", "0.0.0.0", "--livereload", "--ssl-key", "ssl/localhost.key", "--ssl-cert", "ssl/localhost.crt"]
