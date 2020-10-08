defmodule SampleAshframework.Resources.Tweet do
  use Ash.Resource

  attributes do
    attribute :id, :uuid do
      # All ash resources currently require a primary key
      # Eventually, we will add good defaults and/or allow
      # for a global configuration of your default primary key
      primary_key? true
      allow_nil? false
      writable? false
      default &Ecto.UUID.generate/0
    end

    attribute :body, :string do
      allow_nil? false
      constraints [max_length: 255]
    end

    # Alternatively, you can use the keyword list syntax
    # You can also set functional defaults, via passing in a zero
    # argument function or an MFA
    attribute :public, :boolean, allow_nil?: false, default: false

    # `create_timestamp` above is just shorthand for:
    attribute :created_at, :utc_datetime, writable?: false, default: &DateTime.utc_now/0
  end

  relationships do
    belongs_to :user, SampleAshframework.Resources.User
  end
end
