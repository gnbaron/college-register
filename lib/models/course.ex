defmodule College.Course do
  use Ecto.Schema

  @primary_key {:id, :id, autogenerate: true}
  schema "courses" do
    field :name, :string
    field :duration, :integer, default: 1
  end
end