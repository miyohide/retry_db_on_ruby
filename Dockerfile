FROM ruby:3.0.2-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY scripts/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
COPY . .

ENTRYPOINT [ "entrypoint.sh" ]

CMD ["ruby", "scripts/aggregate_todo_count_by_date.rb"]
