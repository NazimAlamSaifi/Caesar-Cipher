def string_to_numbers(str, num)
  new_str = str.chars.map do |element|
    if element =~ /[A-Za-z]/
      base = element.ord < 91 ? 'A'.ord : 'a'.ord
      (((element.ord - base + num) % 26) + base).chr
    else
      element
    end
  end.join
  return new_str
end
 
puts string_to_numbers('Hi!', 1)


