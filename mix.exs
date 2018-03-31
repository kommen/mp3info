defmodule Mp3Info.Mixfile do
  use Mix.Project

  def project do
    [app: :mp3info,
     version: "0.0.1",
     elixir: "~> 1.6",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
      {:httpoison, "~> 1.0.0"},
    ]
  end
end
