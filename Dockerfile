FROM ruby:3.0.5

WORKDIR /app

# COPY Gemfile .
COPY . .

RUN gem install bundler
RUN bundle install

EXPOSE 3000

RUN chown -R 1000:1000 /app

USER 1000

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
