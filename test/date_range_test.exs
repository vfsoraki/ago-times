defmodule DateRangeTest do
  use ExUnit.Case


  test "seconds should returl DateTime instance" do
    assert %DateTime{} = DateRange.ago 2, :seconds
  end

  test "minutes should returl DateTime instance" do
    assert %DateTime{} = DateRange.ago 2, :minutes
  end

  test "hours should returl DateTime instance" do
    assert %DateTime{} = DateRange.ago 2, :hours
  end

  test "days should returl DateTime instance" do
    assert %DateTime{} = DateRange.ago 2, :days
  end

  test "weeks should returl DateTime instance" do
    assert %DateTime{} = DateRange.ago 2, :weeks
  end
end
