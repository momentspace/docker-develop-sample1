FROM ruby:2.4

RUN apt update && apt install -y nodejs redis-server

RUN gem install bundler

VOLUME /app

ADD Gemfile /app/
ADD Gemfile.lock /app/

WORKDIR /app
RUN bundle install

ADD . /app

