defmodule College.Repo.Migrations.Migrations do
  use Ecto.Migration

  def change do
    subject_migration

  end

  defp subject_migration do
    create table(:subject) do
      add :name, :string
      add :workload, :float, default: 0.0
      add :value, :float, default: 0.0
    end
  end

end