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
    array = "brandon".split
    expected = ["Brandon"]
    assert_equal(expected, name_capper(array))
  end

  def test_symbol_to_array
    input = {a:1, b:2, c:3}
    expected = [[:a, :b, :c], [1,2,3]]

    assert_equal(expected, arrayable(input))
  end

  def test_cook_time_5_or_less
    8.times do |i|
      expected = 5
      input = i + 1
      assert_equal(expected, boil_time(5))
    end
  end

  def test_cook_time_div_8
    counter = 0
    8.times do |i|
      counter += 8
      input = counter
      expected = (i + 1) * 5
      assert_equal(expected, boil_time(input))
    end
  end

  def test_cook_time_more_than_5
    counter = 8
    5.times do |i|
      counter += 1
      input = counter
      expected = 10
      assert_equal(expected, boil_time(input))
    end
  end
end
