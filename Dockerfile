FROM ruby:3.0.2-slim

WORKDIR /app
COPY ./lib lib

CMD ["ruby", "lib/app.rb"]
