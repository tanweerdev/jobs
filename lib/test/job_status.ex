defmodule Test.JobStatus do
  use Test, :schema

  @primary_key {:id, :string, autogenerate: false}
  schema "job_statuses" do
    field :title, :string
    field :description, :string
  end

  def changeset(job_status, attrs) do
    cast(job_status, attrs, [:id, :title, :description])
  end
end
