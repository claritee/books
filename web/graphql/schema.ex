defmodule Books.GraphQL.Schema do
  @moduledoc false

  use Absinthe.Schema

  import_types Books.GraphQL.Schema.ContentTypes

  query do
    field :books, list_of(:book) do
      resolve &Books.GraphQL.Resolvers.Content.resolve_books/0
    end
  end
end