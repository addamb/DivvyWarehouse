defmodule DivvyWarehouseTest do
  use ExUnit.Case
  doctest Skynet.DivvyWarehouse

  test "drone coordinates 1,1 should be 1" do
    assert Skynet.DivvyWarehouse.accessDrone(1,1) === 1
  end

  test "drone coordinates 1,7 should be 22" do
    assert Skynet.DivvyWarehouse.accessDrone(1,7) === 22
  end

  test "drone location should be 5" do
    assert Skynet.DivvyWarehouse.accessDrone(2,2) === 5
  end

  test "drone coordinates 2,4 should be 12" do
    assert Skynet.DivvyWarehouse.accessDrone(2,4) === 12
  end

  test "drone coordinates 4,1 should be 10" do
    assert Skynet.DivvyWarehouse.accessDrone(4,1) === 10
  end

  test "drone coordinates 4,2 should be 14" do
    assert Skynet.DivvyWarehouse.accessDrone(4,2) === 14
  end

  test "drone coordinates 612,231 should be 354673" do
    assert Skynet.DivvyWarehouse.accessDrone(612, 231) === 354673
  end

  test "drone coordinates 11111, 11111 should be 246886421" do
    assert Skynet.DivvyWarehouse.accessDrone(11111, 11111) === 246886421
  end

  test "drone coordinates 100000,100000 should not be 246886421" do
    assert Skynet.DivvyWarehouse.accessDrone(100000,100000) !== 20000000001
  end

  test "drone coordinates 100000,100000 should be 19999800001" do
    assert Skynet.DivvyWarehouse.accessDrone(100000,100000) === 19999800001
  end

end
