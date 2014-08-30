def intersection(string_one, string_two)
  string_one.split('').select {|letter| string_two.split('').include?(letter)}.uniq
end
