FROM ruby:2.4

RUN apt update && apt install nodejs redis-server

RUN gem install bundler

