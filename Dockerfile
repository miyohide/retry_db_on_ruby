FROM ruby:3.0.2-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY Gemfile .
RUN bundle install
COPY . .

# CMD ["ruby", "lib/app.rb"]
