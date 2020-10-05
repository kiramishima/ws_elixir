defmodule UserProfile do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}

  @derive {Poison.Encoder, only: [:id, :name, :first_lastname]}
  schema "users_profile" do
    field :user_id, :binary_id
    field :name, :string
    field :first_lastname, :string
    field :second_lastname, :string
    field :phone, :string
    field :picture, :string
    field :birthday, :string
    timestamps()
  end
end
