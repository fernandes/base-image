FROM ruby:2.6.0
COPY . .
WORKDIR .
RUN gem install bundler:2.1.4 && \
    bundle config set deployment 'true' && \
    bundle config set without 'development test' && \
    bundle install
CMD ./run.sh
