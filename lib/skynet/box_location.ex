defmodule Skynet.BoxLocation do
  @moduledoc """
  This is the BoxLocation module.
  """
  @doc """
  Finds the x location value
  """
  @spec findX(any, number, number) :: number
  def findX(xI, x, last) do
    xVal = last + x

    unless x === xI do
      findX(xI, x + 1, xVal)
    else
      xVal
    end
  end

  @doc """
  Finds the y location value
  """
  @spec findY(number, number, number, any) :: number
  def findY(point, y, xI, yI) do
    yVal = (point + xI) + (y - 2)

    unless y === yI do
      findY(yVal, y+1, xI, yI)
    else
      yVal
    end
  end
end
