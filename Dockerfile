FROM ruby:3.0.2-slim

WORKDIR /app
COPY ./lib /app/lib

CMD ["ruby", "lib/app.rb"]
