defmodule SampleAshframework.API do
  use Ash.Api,
    extensions: [
      AshJsonApi.Api
    ]

  resources do
    resource SampleAshframework.Resources.User
    resource SampleAshframework.Resources.Tweet
  end
end
