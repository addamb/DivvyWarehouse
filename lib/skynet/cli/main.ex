defmodule Skynet.CLI.Main do
  @moduledoc """
  This is the Main Module.
  Used to run the DivvyWarehouse
  """

  alias Skynet.DivvyWarehouse, as: Divvy

  @doc """
  Starting process
  Returns `:ok`.
  """
  @spec start_skynet :: :ok
  def start_skynet do
    get_input()
  end

  defp get_input() do
    #magic happens here!!
    #removed according to directions.

    #Set default value
    skynet_process(2,2)
  end

  defp skynet_process(x,y) do
    Divvy.accessDrone(x,y)
    |> skynet_status

  end

  defp skynet_status(box) do
    IO.puts "Sending Drone to box: #{box}"
  end
end
