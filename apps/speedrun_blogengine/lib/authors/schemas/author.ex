defmodule SpeedrunBlogengine.Authors.Schemas.Author do
  @moduledoc """
  The entity of Author.
  """

  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "authors" do
    field :name, :string
    field :email, :string

    timestamps()
  end
end
