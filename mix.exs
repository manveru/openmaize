defmodule Openmaize.Mixfile do
  use Mix.Project

  @description """
  Authentication and authorization library for Elixir using Plug.
  """

  def project do
    [app: :openmaize,
      version: "0.8.0",
      elixir: "~> 1.0",
      name: "Openmaize",
      description: @description,
      package: package,
      source_url: "https://github.com/elixircnx/openmaize",
      deps: deps]
  end

  def application do
    [mod: {Openmaize, []},
     applications: [:logger, :cowboy, :plug, :ecto, :comeonin]]
  end

  defp deps do
    [
      {:cowboy, "~> 1.0"},
      {:plug, "~> 1.0"},
      {:ecto, "~> 1.0"},
      {:comeonin, "~> 1.6"},
      {:poison, "~> 1.5"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc,  "~> 0.10", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["David Whitlock"],
      licenses: ["BSD"],
      links: %{"GitHub" => "https://github.com/elixircnx/openmaize",
        "Docs" => "http://hexdocs.pm/openmaize"}
    ]
  end
end
