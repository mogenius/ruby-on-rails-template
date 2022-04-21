FROM ruby:3.0.3

WORKDIR /app

COPY Gemfile .

RUN gem install bundler
RUN bundle install

COPY . .

EXPOSE 3000

USER 1000

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
