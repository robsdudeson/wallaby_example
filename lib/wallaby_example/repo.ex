defmodule WallabyExample.Repo do
  use Ecto.Repo,
    otp_app: :wallaby_example,
    adapter: Ecto.Adapters.Postgres
end
