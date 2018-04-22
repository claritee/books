defmodule Books.Book do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset
  use Books.Web, :model

  schema "books" do
    field :title, :string
    field :author, :string
    timestamps()
  end

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:title, :author])
  end

  def find_by_title(title) do
    query = from u in Books.Book,
      where: u.title == ^title
    Books.Repo.one(query)
  end

  def find_by_id(id) do
    query = from u in Books.Book,
      where: u.id == ^id
    Books.Repo.one(query)
  end
end
