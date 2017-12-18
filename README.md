See https://elixirforum.com/t/belongs-to-assoc-changeset-not-being-inserted-into-database/9188

```sh
$ mix ecto.setup
$ iex -S mix

Interactive Elixir (1.5.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Test.Jobs.create_job_status()
iex(2)> Test.Jobs.test_default_status()
(Postgrex.Error) ERROR 23502 (not_null_violation): null value in column "status_id" violates not-null constraint
```
