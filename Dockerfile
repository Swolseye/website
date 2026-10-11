FROM ruby:3.3

WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch", "--force_polling", "--destination", "/tmp/jekyll-site"]

