defmodule EctoRange do
  @moduledoc """
  A helper library to easily create relative times, like 2 days ago, to be used with Ecto.

  The result of functions is always a `%Ecto.DateTime{}`.
  """

  @epoch :calendar.datetime_to_gregorian_seconds({{1970, 1, 1}, {0, 0, 0}})

  @spec ago(number :: integer, unit :: DateRange.time_unit) :: %Ecto.DateTime{}
  @doc """
  Create a past time, yielding a `%Ecto.DateTime{}`.
  
  Example:
  
  ```
  # Create a DateTime, indicating 2 days ago
  EctoRange.ago 2, :days
  ```

  Available units are `:seconds`, `:minutes`, `:hours`, `:days` and `:weeks`.
  """
  def ago(number, unit) when is_integer(number) do
    DateRange.ago(number, unit)
    |> DateTime.to_unix()
    |> Kernel.+(@epoch)
    |> :calendar.gregorian_seconds_to_datetime()
    |> Ecto.DateTime.from_erl()
  end
end
