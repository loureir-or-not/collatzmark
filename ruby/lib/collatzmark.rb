# frozen_string_literal: true

require_relative "collatzmark/version"

# Methods for Collatz conjecture
module Collatzmark
  class Error < StandardError; end

  def self.collatz(foo)
    return foo / 2 if foo.even?

    (3 * foo) + 1
  end

  def self.collatz_sequence(foo)
    foo == 1 && ""

    i = collatz foo
    res = ""
    while i != 1
      res += "#{i},"
      i = collatz i
    end

    "#{res}1"
  end
end
