defmodule User do
  @derive [Poison.Encoder]

  defstruct [:id, :user_id, :profile_id, :email, :name, :first_lastname, :second_lastname, :phone, :birthday]
end
