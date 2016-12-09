defmodule TimeSpans.Mixfile do
  use Mix.Project

  def project do
    [app: :ago_times,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     dialyzer: [
       plt_add_apps: [:ecto],
     ],
    ]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [
      {:ecto, ">= 0.0.0", optional: true},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:dialyxir, "~> 0.4", only: [:dev], runtime: false}
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
     links: %{"GitHub" => "https://github.com/vfsoraki/ago-times"}
    ]
  end
end
