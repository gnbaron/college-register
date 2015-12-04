defmodule College.SubjectController do
  import Ecto.Query
  alias College.Subject
  alias College.Repo

  def show_all do
    Repo.all(Subject)
  end

  def show(id) do

  end

  def create(name, workload, value) do
    Repo.insert! %Subject{name: name, workload: workload, value: value}
  end

  def update(id, name, workload, value) do
    Repo.insert! %Subject{name: name, workload: workload, value: value}
  end

  # def get(id) do
  #   Subject
  #   |> where(id: id)
  #   |> Repo.get
  # end

  # def delete(id) do
  #   Subject
  #   |> where(id: id)
  #   |> Repo.delete
  # end

  # def delete(id, name, workload, value) do
  #   Subject
  #   |> where(id: id)
  #   |> Repo.update
  #   #TODO
  # end

end