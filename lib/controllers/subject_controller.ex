defmodule College.SubjectController do
  import Ecto.Query
  alias College.Subject
  alias College.Repo

  def getAll do
    Repo.all(Subject)
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

  # def pipe_query do
  #   Weather
  #   |> where(city: "Kraków")
  #   |> order_by(:temp_lo)
  #   |> limit(10)
  #   |> Repo.all
  # end
end