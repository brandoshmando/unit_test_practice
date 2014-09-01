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