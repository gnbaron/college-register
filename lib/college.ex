defmodule College do
  use Application

  def start(_type, _args) do
    College.Supervisor.start_link
  end  
end