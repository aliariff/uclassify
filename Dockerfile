FROM ruby:2.3.0-alpine

RUN mkdir /code
WORKDIR /code
COPY . /code
RUN bundle install

ENV RACK_ENV production
EXPOSE 9292
CMD ["rackup"]
