FROM elixir:1.11

RUN mix local.hex --force
RUN mix local.rebar --force

ADD . $APP_HOME

RUN mix deps.get
RUN mix compile --warnings-as-errors

CMD ./script/docker/start
