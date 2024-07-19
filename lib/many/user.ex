defmodule Many.User do
  use Ecto.Schema
  import Ecto.Changeset
  import TypedEctoSchema

  # If you use a plain Ecto schema here there is no compile-time dep
  # schema "users" do
  typed_schema "users" do
    field :name, :string
    field :email, :string

    many_to_many :book_reviews, Many.BookReview,
      join_through: Many.Book,
      unique: true,
      on_replace: :delete

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
