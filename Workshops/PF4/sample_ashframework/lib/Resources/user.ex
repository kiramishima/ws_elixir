defmodule SampleAshframework.Resources.User do
  use Ash.Resource

  attributes do
    attribute :id, :uuid do
      primary_key? true
      allow_nil? false
      writable? false
      default &Ecto.UUID.generate/0
    end
    attribute :email, :string, allow_nil?: false, constraints: [
      match: ~r/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}/
    ]
  end

  relationships do
    has_many :tweets, SampleAshframework.Resources.Tweet, destination_field: :user_id
  end
end
