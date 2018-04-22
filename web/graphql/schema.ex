defmodule Books.GraphQL.Schema do
  @moduledoc false

  use Absinthe.Schema

  import_types Books.GraphQL.Schema.Types

  query do
    field :book, :book do
      arg :id, :id
      resolve &Books.GraphQL.Resolvers.Book.resolve_book/3
    end
    field :books, list_of(:book) do
      resolve &Books.GraphQL.Resolvers.Book.resolve_books/2
    end
  end
end