defmodule Test do
  defmacro __using__(:schema) do
    quote do
      use Ecto.Schema
      import Ecto.Changeset
    end
  end
end
