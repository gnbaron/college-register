defmodule College.Subject do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}
  schema "subject" do
    field :name, :string
    field :workload, :float, default: 0.0
    field :value,    :float, default: 0.0
  end
end