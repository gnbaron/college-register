defmodule College.Course do
  use Ecto.Schema

  schema "courses" do
    field :name, :string
    field :duration, :integer, default: 1
  end
end