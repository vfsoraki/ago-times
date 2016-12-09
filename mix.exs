defmodule TimeSpans.Mixfile do
  use Mix.Project

  def project do
    [app: :ago_times,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [
      {:ecto, ">= 0.0.0", optional: true}
    ]
  end
  defp description do
    """
    A library to easily create "ago" times.
    """
  end

  defp package do
    [
     maintainers: ["Vahid Fazlollahzade"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/ericmj/postgrex"}
    ]
  end
end
