FROM ruby:2.7.5 AS webapp

ARG RAILS_DATABASE_HOST
ARG RAILS_DATABASE_PASSWORD
ARG SECRET_KEY_BASE

ENV TZ Asia/Tokyo
ENV BUNDLER_VERSION 2.3.6
ENV RAILS_ENV production

RUN gem install bundler -v "${BUNDLER_VERSION}"
COPY Gemfile Gemfile.lock ./
RUN bundle config set --local without 'development test'; \
    bundle install

COPY . .
RUN bundle exec rake db:migrate; \
    bundle exec rake db:seed_fu; \
    bundle exec rails assets:precompile

RUN chmod 744 /startup.sh

CMD ["/startup.sh"]
