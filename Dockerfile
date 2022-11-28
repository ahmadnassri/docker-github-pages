FROM ruby:3.1.3-alpine

LABEL name="jekyll"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

VOLUME /site
WORKDIR /site

RUN apk --no-cache add build-base git

COPY Gemfile .
RUN gem install -g

RUN apk del build-base git
RUN rm -rf /usr/lib/ruby/gems/*/cache/*.gem

EXPOSE 4000
EXPOSE 35729

ENTRYPOINT ["jekyll"]
CMD ["serve", "--host", "0.0.0.0", "--livereload"]

# TODO: make SSL work with volumes
# CMD ["serve", "--host", "0.0.0.0", "--livereload", "--ssl-key", "ssl/localhost.key", "--ssl-cert", "ssl/localhost.crt"]
