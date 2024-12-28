defmodule CollatzmarkTest do
  use ExUnit.Case
  doctest Collatzmark

  test "Collatz of {4, 5} are {2, 16}" do
    assert({Collatzmark.collatz(4), Collatzmark.collatz(5)} == {2, 16})
  end

  test "The collatz sequence of {1, 2} is {[], [\"1,\"]}" do
    assert({Collatzmark.collatz_sequence(1), Collatzmark.collatz_sequence(2)} == {[], ["1,"]})
  end
end
