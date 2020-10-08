defmodule SampleAshframework.MixProject do
  use Mix.Project

  def project do
    [
      app: :sample_ashframework,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SampleAshframework.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ash, "~> 1.15.1", override: true},
      {:ash_json_api, "~> 0.19.0"},
      {:ecto, "~> 3.5.1"},
      {:jason, "~> 1.2.1"},
      {:xema, "~> 0.13.1"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
