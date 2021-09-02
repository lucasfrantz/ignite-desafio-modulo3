defmodule Flightex.Users.Agent do
  use Agent

  def start_link(_start_value) do
    Agent.start_link(%{})
  end
end
