defmodule Mix.Tasks.Start do
  @moduledoc """
  This is the Start module.
  """
  use Mix.Task

  @doc """
  Runs the progrma with mix start
  """
  @spec run(any) :: :ok
  def run(_), do: Skynet.CLI.Main.start_skynet
end
