defmodule College.Repo.Migrations.Migrations do
  use Ecto.Migration

  def change do
    subject_migration
    course_migration
    content_migration
    student_migration
    register_migration
  end

  defp subject_migration do
    create table(:subjects) do
      add :name, :string
      add :workload, :float, default: 0.0
      add :value, :float, default: 0.0
    end
  end

  defp course_migration do
    create table(:courses) do
      add :name, :string
      add :duration, :integer, default: 1
    end
  end

  defp content_migration do
    create table(:contents, primary_key: false) do
      add :semester, :integer
      add :course_id, references(:courses)
      add :subject_id, references(:subjects)
    end    
  end

  defp student_migration do
    create table(:students, primary_key: false) do
      add :ra, :integer, primary_key: true
      add :name, :string
      add :email, :string
      add :course_id, references(:courses, column: :id)
    end
  end

  def register_migration do
    create table(:registers) do
      add :year, :integer
      add :semester, :integer
      add :student_id, references(:students, column: :ra)
    end
    create table(:register_contents) do
      add :register_id, references(:registers)
      add :subject_id, references(:subjects)
    end
  end

end