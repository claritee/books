defmodule Books.Repo.Migrations.AddBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :author, :string
      timestamps()
    end
  end
end
