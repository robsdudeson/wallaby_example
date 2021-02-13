ExUnit.start()
{:ok, _} = Application.ensure_all_started(:wallaby)
Ecto.Adapters.SQL.Sandbox.mode(WallabyExample.Repo, :manual)

Application.put_env(:wallaby, :base_url, WallabyExample.Endpoint.url)
