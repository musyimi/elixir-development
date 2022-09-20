defmodule CustomerRegistration.Repo do
  use Ecto.Repo,
    otp_app: :customer_registration,
    adapter: Ecto.Adapters.Postgres
end
