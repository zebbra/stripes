# Used by "mix format"
[
  inputs: [
    "{mix,.formatter}.exs",
    "{config,lib,test}/**/*.{ex,exs}"
  ],
  import_deps: [
    :phoenix
  ],
  plugins: [
    TailwindFormatter,
    Phoenix.LiveView.HTMLFormatter,
    Styler
  ]
]
