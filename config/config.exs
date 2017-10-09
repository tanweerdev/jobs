use Mix.Config

config :test, ecto_repos: [Test.Repo]
config :test, Test.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "jobs_dev"
