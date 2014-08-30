require_relative 'string.rb'
require 'test/unit'
class TestString < Test::Unit::TestCase
  def test_string_class
    string = String.new("string")
    expected = string.class
    assert_equal(expected, String)
  end
  def test_intersection
    string_one = "abcdefg"
    string_two = "defghi"
    result = intersection(string_one,string_two)
    assert_equal( result, ["d", "e", "f", "g"])
  end
  def test_hash_to_string
    assert_equal(stringify({a: 1, b: '2'}), "a = 1, b = 2")
  end

  def test_sleigh_class
    expected = Sleigh.new
    assert_equal(expected.class, Sleigh)
  end

  def test_sleigh_auth_success
    assert(Sleigh.new.auth("Santa Clause", "Ho Ho!"))
  end

  def test_sleigh_auth_fail
    assert_block do
      !Sleigh.new.auth("Clause", "Ho")
    end
  end

  def test_oddities
    array = [1,2,3,4,5,6,7,8,9]
    expected = [1,3,5,7,9]
    assert_equal(expected, oddities(array))
  end

  def test_capped_names
    name = "brandon"
    expected = name.capitalize.to_a
    assert_equal(expected, name_capper(name))
  end
end
