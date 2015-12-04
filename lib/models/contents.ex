defmodule College.Contents do
  use Ecto.Schema

  schema "contents" do
    field :semester, :integer
    belongs_to :course, College.Course
    belongs_to :subject, College.Subject
  end
  
end