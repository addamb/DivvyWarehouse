defmodule Skynet.DivvyWarehouse do
  @moduledoc """
  This is the DivvyWarehouse module.
  """

  alias Skynet.BoxLocation

  @startingPoint 2
  @startingValue 1

  @doc """
    Takes x,y and send drone to box
  """
  @spec accessDrone(number, number) :: number
  def accessDrone(x,y) when is_number(x) and is_number(y) do
    sendDroneTo(x,y)
  end

  defp sendDroneTo(x,y) when x === 1 and y === 1 do
    # return 1
    x
  end

  defp sendDroneTo(x,y) when x === 1 do
    BoxLocation.findY(@startingValue, @startingPoint, x, y)
  end

  defp sendDroneTo(x,y) when y === 1 do
    BoxLocation.findX(x, @startingPoint, @startingValue)
  end

  defp sendDroneTo(x,y) do
    xPoint = fn (x) ->
       BoxLocation.findX(x, @startingPoint, @startingValue)
    end

    _boxLocation = BoxLocation.findY(xPoint.(x), @startingPoint, x, y)
  end
end
