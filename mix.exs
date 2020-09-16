defmodule GodotWrapper.MixProject do
  use Mix.Project

  def project do
    [
      app: :godot_wrapper,
      version: "0.1.0",
      elixir: "~> 1.10",
      compilers: [:unifex, :bundlex] ++ Mix.compilers(),
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_env), do: ["lib"]

  defp deps do
    [
      {:unifex, "~> 0.3.1"},
    ]
  end
end
