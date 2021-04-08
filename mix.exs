defmodule Ng.Can.Mixfile do
  use Mix.Project

  @version "2.0.0"

  def project do
    [app: :ng_can,
     name: "Ng.Can",
     version: @version,
     elixir: "~> 1.11",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     compilers: [:elixir_make] ++ Mix.compilers,
     make_executable: :default,
     make_makefile: "Makefile",
     make_error_message: :default,
     make_clean: ["clean"],
     deps: deps()
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do [
    extra_applications: [:logger]
    ]
  end

  defp deps do [
    {:elixir_make, "~> 0.3"}
    ]
  end
end
