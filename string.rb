def intersection(string_one, string_two)
  string_one.split('').select {|letter| string_two.split('').include?(letter)}.uniq
end

def stringify(hash)
  array = hash.map {|key, value| "#{key} = #{value}"}.join(', ')
end

class Sleigh
  def auth(name,password)
    name == "Santa Clause" && password == "Ho Ho!"
  end
end

def oddities(array)
  array.select {|num| num % 2 != 0 }
end

def name_capper(array)
  array.map {|name| name.capitalize}
end

def arrayable(hash)
  key_array = []
  value_array = []

  hash.each_pair {|key, value| key_array << key and value_array << value}
  [key_array, value_array]
end

def boil_time(eggs)
  if eggs <= 8
    5
  elsif eggs % 8 == 0
    (eggs / 8) * 5
  else
    batch = ((eggs - (eggs % 8)) / 8) + 1
    batch * 5
  end
end

def nth_tri_number(n)
  n == 0 ? 0 : (n*n+n)/2
end

def sort_gift_code(string)
  string.split('').sort.join
end

def flatten_array(array)
  array.length < 2 ? array : array.flatten
end

def longest_palindrome(str)
  palindromes = []
  (1..str.size).each do |length|
    str.split('').each_cons(length) do |letters|
      palindromes << letters.join if letters.join == letters.join.reverse
    end
  end
  palindromes.max_by {|a| a.length}
end
longest_palindrome("zezyzzy")


