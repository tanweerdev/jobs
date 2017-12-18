defmodule Test.Job do
  use Test, :schema

  schema "jobs" do
    belongs_to :status, Test.JobStatus,
      foreign_key: :status_id,
      references: :id,
      type: :string,
      define_field: false

    field :status_id, :string, read_after_writes: true

    timestamps()
  end

  def changeset(job, attrs) do
    cast(job, attrs, [:status_id])
  end
end
