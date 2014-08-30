require_relative 'string.rb'
require 'test/unit'
class TestString < Test::Unit::TestCase
  def test_string_class
    string = String.new("string")
    expected = string.class
    assert_equal(expected, String)
  end
  def test_intersection
    string_one = "abc"
    string_two = "bcd"

    assert_equal(intersection(string_one,string_two), ["b", "c"])
  end
  def test_hash_to_string
    assert_equal(stringify({a: 1, b: '2'}), "a = 1, b = 2")
  end
end
