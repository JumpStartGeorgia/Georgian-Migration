# Bundle caching source: http://bradgessler.com/articles/docker-bundler/

FROM ruby:2.3.0

RUN apt-get update -qq
RUN apt-get install -y build-essential libpq-dev

ENV APP_HOME /myapp

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
    BUNDLE_JOBS=2 \
    BUNDLE_PATH=/bundle \
    NEO4J_URL=http://db:7474/

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

ADD . $APP_HOME/
