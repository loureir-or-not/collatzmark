defmodule Collatzmark do
  def main(_args) do
    Enum.map(1..10000, fn x -> IO.puts("#{x}: #{collatz_sequence(x)}") end)
  end

  require Integer

  def collatz(x) when Integer.is_even(x) do
    Integer.floor_div(x, 2)
  end

  def collatz(x) do
    3 * x + 1
  end

  def collatz_sequence(1) do
    []
  end

  def collatz_sequence(x) do
    ["#{collatz(x)},"] ++ collatz_sequence(collatz(x))
  end
end
