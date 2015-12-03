defmodule College.Subject do
  defstruct id: 0, 
            name: 'Subject Name', 
            carga_horaria: 0.0, 
            valor: 0.0

  import RethinkDB.Query

  def getAll do
    table("subject")
    |> RethinkDB.run :conn
  end
end
