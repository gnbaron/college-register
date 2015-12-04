defmodule College.Register do
  use Ecto.Schema

  schema "registers" do
    field :year, :integer
    field :semester, :integer
    belongs_to :course, College.Course
    belongs_to :student, College.Student
    embeds_many :contents, College.RegisterContent
  end
end

defmodule College.RegisterContent do
  use Ecto.Schema

  schema "register_contents" do
    belongs_to :subject, College.Subject
  end
  
end