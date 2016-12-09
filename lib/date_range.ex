defmodule DateRange do
  def ago(days, :days) when is_integer(days) do
    ago 86400 * days, :seconds
  end

  def ago(minutes, :minutes) when is_integer(minutes) do
    ago 60 * minutes, :seconds
  end

  def ago(seconds, :seconds) when is_integer(seconds) do
    System.system_time(:seconds)
    |> (fn time -> time - seconds end).()
    |> DateTime.from_unix(:seconds)
    |> (fn {:ok, %DateTime{} = datetime} -> datetime end).()  
  end

  def ago(hours, :hours) when is_integer(hours) do
    ago 3600 * hours, :seconds
  end

  def ago(weeks, :weeks) when is_integer(weeks) do
    ago 604800 * weeks, :seconds
  end
end
