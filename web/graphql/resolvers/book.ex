defmodule Books.GraphQL.Resolvers.Book do
  @moduledoc false
  alias Books.GraphQL.Types.Book

  def resolve_books(_args, _resolution) do
    books = Books.Repo.all(Books.Book)
    result = Enum.map books, fn(book) ->
      %Book{id: book.id, title: book.title, author: book.author}
    end
    {:ok, result}
  end

  def resolve_book(%{id: id}) do
    {:ok, Books.Repo.get(Books.Book, id)}
  end
end
