FROM ruby:2.7.4

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .

RUN gem install bundler
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bin/rails", "server"]
