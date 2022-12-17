FROM ruby:3.0.2-bullseye

WORKDIR /usr/src/DragonsAndGems
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN rails db:create
RUN rails db:migrate
CMD ["bin/rails", "s", "-b", "172.17.0.2"]