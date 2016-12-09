defmodule EctoRange do
  epoch = {{1970, 1, 1}, {0, 0, 0}}
  @epoch :calendar.datetime_to_gregorian_seconds(epoch)

  def ago(number, unit) when is_integer(number) do
    DateRange.ago(number, unit)
    |> DateTime.to_unix()
    |> Kernel.+(@epoch)
    |> :calendar.gregorian_seconds_to_datetime()
    |> Ecto.DateTime.from_erl()
  end
end
