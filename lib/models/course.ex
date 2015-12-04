defmodule College.Course do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}
  schema "course" do
    field :name, :string
    field :duration, :integer, default: 1
  end
end