defmodule Stripes.Components do
  @moduledoc """
  This module contains the Stripe components.

  ## Usage

  ```elixir
  defmodule MyLiveView do
    # Import all stripe components
    use Stripes.Components
  end
  ```
  """

  defmacro __using__(_) do
    quote do
      # import ...
    end
  end
end
