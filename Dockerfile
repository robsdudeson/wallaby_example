FROM elixir:1.11 as app

RUN apt-get update
RUN apt-get install -y inotify-tools

RUN mix local.hex --force
RUN mix local.rebar --force

ADD . $APP_HOME

RUN mix do deps.get, deps.compile
RUN mix assets.compile
RUN mix compile --warnings-as-errors

CMD ./script/docker/start

FROM robcherry/docker-chromedriver:latest as e2e

COPY --from=app $APP_HOME .
CMD [./script/docker/e2e]
