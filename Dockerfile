ARG RUBY_VERSION=3.4.1
FROM ruby:${RUBY_VERSION}

COPY ./ /app

WORKDIR /app

RUN bundle install
#
# CMD ["rails", "s"]
