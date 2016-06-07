# Bundle caching source: http://bradgessler.com/articles/docker-bundler/

FROM ruby:2.3.0

RUN apt-get update -qq
RUN apt-get install -y build-essential libpq-dev

ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

# Cache bundled gems to speed up bundling
ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle

ADD . $APP_HOME/
