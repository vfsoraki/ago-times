defmodule EctoRangeTest do
  use ExUnit.Case

  test "seconds should return Ecto.DateTime instance" do
    assert %Ecto.DateTime{} = EctoRange.ago 2, :seconds
  end

  test "minutes should return Ecto.DateTime instance" do
    assert %Ecto.DateTime{} = EctoRange.ago 2, :minutes
  end

  test "hours should return Ecto.DateTime instance" do
    assert %Ecto.DateTime{} = EctoRange.ago 2, :hours
  end

  test "days should return Ecto.DateTime instance" do
    assert %Ecto.DateTime{} = EctoRange.ago 2, :days
  end

  test "weeks should return Ecto.DateTime instance" do
    assert %Ecto.DateTime{} = EctoRange.ago 2, :weeks
  end

end
