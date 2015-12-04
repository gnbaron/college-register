defmodule College.Subject do
  use Ecto.Schema

  import Ecto.Changeset

  schema "subjects" do
    field :name, :string
    field :workload, :float, default: 0.0
    field :value,    :float, default: 0.0
  end

  @required_fields ~w(name workload value)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end