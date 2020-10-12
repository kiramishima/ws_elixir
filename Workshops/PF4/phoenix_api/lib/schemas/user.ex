defmodule PhoenixApiWeb.Schemas.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhoenixApiWeb.Schemas.User

  @derive {Jason.Encoder, only: [:id, :username]}
  schema "user" do
    field :username, :string
    field :email, :string
    field :password, :string
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :email, :password])
    |> validate_required([:username, :email, :password])
    |> unique_constraint(:username)
    |> hash_password()
  end

  defp hash_password(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: password}} ->
        put_change(changeset, :password, Argon2.hash_pwd_salt(password))
      _ ->
        changeset
    end
  end
end
