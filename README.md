# AgoTimes

This library aims to ease creation of past times in Elixir. For example

```
# This creates a DateTime for 2 days ago
DateRange.ago 2, :days
```

It also has helpers for Ecto. For example

```
# Create a Ecto.DateTime for 2 days ago
EctoRange.ago 2, :days
```


## Installation

The package can be installed as:

  1. Add `ago_times` to your list of dependencies in `mix.exs`:


    def deps do
      [{:ago_times, "~> 0.1.0"}]
    end


  2. Have fun!


## How to use

Since this is a library, there is no application to start after installation. There is only one function, `ago/2` defined in both modules `DateRange` and `EctoRange`. In the following examples, you can replace `DateRange` with `EctoRange` to get `Ecto.DateTime` instead of `DateTime`.

```
# Seconds ago
DateRange 2, :seconds

# Minutes ago
DateRange 2, :minutes

# Hours ago
DateRange 2, :hours

# Days ago
DateRange 2, :days

# Weeks ago
DateRange 2, :weeks
```
