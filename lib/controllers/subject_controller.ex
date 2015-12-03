defmodule College.SubjectController do
  import Ecto.Query
  alias College.Subject
  alias College.Repo

  def getAll do
    Repo.all(Subject)
  end

  # def pipe_query do
  #   Weather
  #   |> where(city: "Kraków")
  #   |> order_by(:temp_lo)
  #   |> limit(10)
  #   |> Repo.all
  # end
end