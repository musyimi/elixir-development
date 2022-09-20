defmodule ElixirDevelopment.Repo do
  use Ecto.Repo,
    otp_app: :elixir_development,
    adapter: Ecto.Adapters.Postgres
end
