# frozen_string_literal: true

require "test_helper"

# Tests for Collatzmark
class TestCollatzmark < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil Collatzmark::VERSION
  end

  def test_collatz_sequence_makes_sense
    assert_equal (Collatzmark.collatz_sequence 4), "2,1"
    assert_equal (Collatzmark.collatz_sequence 5), "16,8,4,2,1"
  end
end
