import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :elixir_development, ElixirDevelopment.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "elixir_development_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_development_web, ElixirDevelopmentWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "DNnEPkwAQI71ahIUibyY2J5upbMGaNy+s7wMwYK55qZVReVArW6I3MU87BuRZXJ1",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :elixir_development, ElixirDevelopment.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
