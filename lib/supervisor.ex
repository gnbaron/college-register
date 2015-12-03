defmodule College.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok)
  end

  def init(:ok) do
    children = [
      worker(RethinkDB.Connection, [[name: :conn, host: 'localhost', port: 28015]])
    ]
    supervise(children, strategy: :one_for_one)
  end
end