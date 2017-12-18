defmodule Test.Repo.Migrations.AddStuff do
  use Ecto.Migration

  def change do
    create table(:job_statuses, primary_key: false) do
      add :id, :string, primary_key: true
      add :title, :string
      add :description, :string
    end

    create table(:jobs) do
      add :status_id, references(:job_statuses, column: "id", type: :string), null: false, default: "confirmed"

      timestamps()
    end
  end
end
