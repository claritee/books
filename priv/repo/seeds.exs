# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Books.Repo.insert!(%Books.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will halt execution if something goes wrong.

Books.Repo.delete_all(Books.Book)

books = [
  %{title: "Lady Susan", author: "Jane Austen"},
  %{title: "Jane Eyre", author: "Charlotte Bronte"},
  %{title: "The Three Musketeers", author: "Alexandre Dumas"}
]

Enum.each books, fn(book) ->
  Books.Book.changeset(%Books.Book{}, book)
  |> Books.Repo.insert!
end
