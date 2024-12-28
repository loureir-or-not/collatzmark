defmodule Collatzmark do
  @moduledoc """
  This module does stuff with Collatz conjecture.
  """

  def main(_args) do
    Enum.map(1..10000, fn x -> IO.puts("#{x}: #{collatz_sequence(x)}") end)
  end

  require Integer

  @doc """
  Returns the collatz integer of parameter `x`.

  If x is odd, we multiply x by 3, then add one.
  If x is even, we half it.
  """
  def collatz(x) when Integer.is_even(x) do
    Integer.floor_div(x, 2)
  end

  def collatz(x) do
    3 * x + 1
  end

  @doc """
  Returns a sequence of collatz integers
  using parameter `x` or 1 as a starting point.

  Returns an empty array if given parameter 1.
  """
  def collatz_sequence(1) do
    []
  end

  def collatz_sequence(x) do
    ["#{collatz(x)},"] ++ collatz_sequence(collatz(x))
  end
end
