defmodule College.SubjectController do
  import Ecto.Query
  alias College.Subject
  alias College.Repo

  def show_all do
    Repo.all(Subject)
  end

  def show(id) do
    Repo.get!(Subject, id)
  end

  def create(name, workload \\ 0.0, value \\ 0.0) do
    %Subject{}
    |> Subject.changeset(%{"name" => name, "workload" => workload, "value" => value})
    |> Repo.insert!
  end

  def update(id, name, workload \\ 0.0, value \\ 0.0) do
    Repo.get!(Subject, id)
    |> Subject.changeset(%{"name" => name, "workload" => workload, "value" => value})
    |> Repo.update!
  end

  def remove(id) do
    Repo.get!(Subject, id) |> Repo.delete!
  end
end