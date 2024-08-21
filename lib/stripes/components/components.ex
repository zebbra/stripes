defmodule Stripes.Components do
  @moduledoc false
  defmacro __using__(_) do
    quote do
      import PetalComponents.Accordion
      import PetalComponents.Alert
      import PetalComponents.Avatar
      import PetalComponents.Badge
      import PetalComponents.Breadcrumbs
      import PetalComponents.Button
      import PetalComponents.Card
      import PetalComponents.Container
      import PetalComponents.Dropdown
      import PetalComponents.Field
      import PetalComponents.Form
      import PetalComponents.Icon
      import PetalComponents.Input
      import PetalComponents.Link
      import PetalComponents.Loading
      import PetalComponents.Menu
      import PetalComponents.Modal
      import PetalComponents.Pagination
      import PetalComponents.Progress
      import PetalComponents.Rating
      import PetalComponents.Skeleton
      import PetalComponents.SlideOver
      import PetalComponents.Table
      import PetalComponents.Tabs
      import PetalComponents.Typography
      import PetalComponents.UserDropdownMenu

      alias PetalComponents.HeroiconsV1
    end
  end
end
