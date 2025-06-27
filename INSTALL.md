
# Installation
{@shortdoc}

This task is used by igniter to install the Stripes package and configure
all necessary dependencies in the target project.

## Usage

    mix igniter.install stripes

This will:
- Add stripes and its dependencies to mix.exs
- Install Phoenix, Phoenix HTML, and Phoenix LiveView if not already present
- Provide instructions for using Stripes components

## Dependencies
### `styler`
An opinionated formatter
Create `.formatter.exs`:
```
# Used by "mix format"
[
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"],
  plugins: [Styler]
]

```

Update `mix.exs`:
```diff
...
    defp deps do
      [
+       {:styler, "~> 1.4", only: [:dev, :test]}
        # {:dep_from_hexpm, "~> 0.3.0"},
        # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
...
```

Update `test/test_test.exs`:
```diff
  defmodule Elixir.TestTest do
    use ExUnit.Case
+ 
    doctest Elixir.Test
  
...
```

### `ex_check`
An opinionated checker
Update `mix.exs`:
```diff
...
    defp deps do
      [
+       {:mix_audit, ">= 0.0.0", only: [:dev], runtime: false},
+       {:sobelow, ">= 0.0.0", only: [:dev], runtime: false},
+       {:gettext, ">= 0.0.0", only: [:dev], runtime: false},
+       {:ex_doc, ">= 0.0.0", only: [:dev], runtime: false},
+       {:doctor, ">= 0.0.0", only: [:dev], runtime: false},
+       {:dialyxir, ">= 0.0.0", only: [:dev], runtime: false},
+       {:credo, ">= 0.0.0", only: [:dev], runtime: false},
+       {:ex_check, "~> 0.16", only: [:dev, :test], runtime: false},
        {:styler, "~> 1.4", only: [:dev, :test]}
        # {:dep_from_hexpm, "~> 0.3.0"},
...
```
