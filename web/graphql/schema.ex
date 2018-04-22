defmodule Books.GraphQL.Schema do
  @moduledoc false

  use Absinthe.Schema

  import_types Books.GraphQL.Schema.Types

  query do
    field :books, list_of(:book) do
      resolve &Books.GraphQL.Resolvers.Book.resolve_books/2
    end
  end
end