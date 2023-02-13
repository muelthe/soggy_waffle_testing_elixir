FROM elixir:latest

RUN mix local.hex --if-missing --force
RUN mix archive.install hex phx_new 1.7.0-rc.2 --force

RUN apt-get update -y
RUN apt-get install -y inotify-tools \
apt-utils \
build-essential \
nano

RUN mix local.rebar --force

EXPOSE 4000

WORKDIR /app
