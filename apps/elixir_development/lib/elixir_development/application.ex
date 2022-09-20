defmodule ElixirDevelopment.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ElixirDevelopment.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: ElixirDevelopment.PubSub}
      # Start a worker by calling: ElixirDevelopment.Worker.start_link(arg)
      # {ElixirDevelopment.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: ElixirDevelopment.Supervisor)
  end
end
