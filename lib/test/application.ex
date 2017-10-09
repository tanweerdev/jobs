defmodule Test.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    children = [
      Test.Repo
    ]

    opts = [strategy: :one_for_one, name: Test.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
