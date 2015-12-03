defmodule College do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(College.Repo, []),
    ]

    opts = [strategy: :one_for_one, name: College.Supervisor]
    Supervisor.start_link(children, opts)
  end  
end
