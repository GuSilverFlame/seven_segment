defmodule SevenSegment.MixProject do
  use Mix.Project

  def project do
    [
      app: :seven_segment,
      version: "0.8.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    "a seven segment display decoder logic simulation"
  end

  defp package do
    [
      maintainers: ["GuSilverFlame"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/GuSilverFlame/seven_segment"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
    {:excoveralls, "~> 0.8", only: :test},
    {:ex_doc, "~> 0.11", only: :dev}]
  end
end
