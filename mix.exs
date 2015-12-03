defmodule College.Mixfile do
  use Mix.Project

  def project do
    [app: :college,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [
      mod: {College, []},
      applications: [:logger, :postgrex, :ecto]
    ]
  end

  defp deps do
    [
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 1.0"}
    ]
  end
end
