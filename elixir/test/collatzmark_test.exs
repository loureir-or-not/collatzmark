defmodule CollatzmarkTest do
  use ExUnit.Case
  doctest Collatzmark

  test "greets the world" do
    assert Collatzmark.hello() == :world
  end
end
