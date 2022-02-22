FROM ruby:3.0.3

WORKDIR /app

COPY Gemfile .

RUN gem install bundler
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bin/rails", "server"]
