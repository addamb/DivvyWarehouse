defmodule BoxLocationTest do
  use ExUnit.Case
  doctest Skynet.BoxLocation

  test "findX should return 3" do
    assert Skynet.BoxLocation.findX(2, 2, 1) == 3
  end

  test "findY should return 45" do
    assert Skynet.BoxLocation.findY(10, 2, 5, 6) == 45
  end

end
