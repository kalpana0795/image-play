FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN apt-get install make bash

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get install -y nodejs

ENV APP_HOME /code
WORKDIR $APP_HOME

# Set Gemfile path
ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile

ENV BUNDLE_PATH /gems
ENV BUNDLE_HOME /gems

# Where Rubygems will look for gems, similar to BUNDLE_ equivalents.
ENV GEM_HOME /gems
ENV GEM_PATH /gems

# Add /gems/bin to the path so any installed gem binaries are runnable from bash.
ENV PATH /gems/bin:$PATH

# Install ruby dependencies
ADD Gemfile Gemfile.lock $APP_HOME/
RUN bundle install

ADD . $APP_HOME/

CMD make run
