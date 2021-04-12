defmodule SpeedrunBlogengine.Posts.Schemas.PostRevision do
  @moduledoc """
  The immutable contents of each post revision.
  """

  use Ecto.Schema

  alias SpeedrunBlogengine.Posts.Schemas.Post

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "posts" do
    field :title, :string
    field :contents, :string

    belongs_to :post, Post

    timestamps(updated_at: false)
  end
end
