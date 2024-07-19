defmodule Many.Repo.Migrations.CreateBookReviews do
  use Ecto.Migration

  def change do
    create table(:book_reviews) do
      add :book_id, :integer
      add :review, :string

      timestamps(type: :utc_datetime)
    end
  end
end
