defmodule User do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @derive {Poison.Encoder, only: [:id, :email]}
  schema "users" do
    field :email, :string
    field :password, :string
    field :token, :string
    timestamps()
    has_one :user_profile, UserProfile
  end
end
