defmodule SpeedrunBlogengine.Posts.Schemas.Post do
  @moduledoc """
  The entity of Post.
  """

  use Ecto.Schema

  alias SpeedrunBlogengine.Authors.Schemas.Author
  alias SpeedrunBlogengine.Posts.Schemas.PostRevision

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "posts" do
    has_many :revisions, PostRevision
    belongs_to :author, Author

    timestamps()
  end
end
