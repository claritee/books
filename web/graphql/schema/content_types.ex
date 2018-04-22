defmodule Books.GraphQL.Schema.ContentTypes do
  @moduledoc false

  use Absinthe.Schema.Notation

  object :book do
    field :id, :id
    field :title, :string
    field :author, :string
  end
end
