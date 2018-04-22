defmodule Books.GraphQL.Resolvers.Content do
  @moduledoc false

  def resolve_books do
    {:ok, Books.Repo.all(Books.Book)}
  end

  def resolve_book(%{id: id}) do
    {:ok, Books.Repo.get(Books.Book, id)}
  end
end
