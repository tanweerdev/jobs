defmodule Test.Jobs do
  alias Test.{Job, JobStatus, Repo}

  def create_job(attrs) do
    %Job{}
    |> Job.changeset(attrs)
    |> Repo.insert()
  end

  def create_job_status(attrs) do
    %JobStatus{}
    |> JobStatus.changeset(attrs)
    |> Repo.insert()
  end

  def test do
    create_job_status(%{title: "test_job", id: "confirmed"})
    create_job(%{"status_id" => "confirmed", "title" => "test", "service_id" => 1})
  end
end
