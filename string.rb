def intersection(string_one, string_two)
  string_one.split('').select {|letter| string_two.split('').include?(letter)}.uniq
end

def stringify(hash)
  array = hash.map {|key, value| "#{key} = #{value}"}.join(', ')
end
