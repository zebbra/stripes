<p align="center">
  <img src="logo.svg" alt="Logo" height="128">
</p>

# Stripes

<!-- MDOC -->
A set of useful dev tools and libraries as well as a collection of Phoenix LiveView components.

## Installation

### Using Igniter (Recommended)

The easiest way to install Stripes is using Igniter, which will automatically add the dependency and its required dependencies:

```bash
mix igniter.install stripes
```

This will:
- Add `stripes` to your `mix.exs` dependencies
- Ensures helper and dev dependencies are in place
- Provide setup instructions for using Stripes components

### Using Dev Tools

After adding the optional tools and running `mix deps.get`:

```bash
# Run all checks
mix check

# Run individual tools. E.g. ...
mix credo                    # Code analysis
mix dialyzer                 # Type checking
mix format --check-formatted # Code formatting
mix docs                     # Generate documentation
```
