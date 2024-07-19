defmodule Many.BookReview do
  use Ecto.Schema
  import Ecto.Changeset

  schema "book_reviews" do
    field :book_id, :integer
    field :review, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book_review, attrs) do
    book_review
    |> cast(attrs, [:book_id, :review])
    |> validate_required([:book_id, :review])
  end
end
