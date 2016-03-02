def reverse_inplace (str)
  half_length = str.length / 2
  half_length.times do |i|
    str[i], str[-i - 1] = str[-i - 1], str[i]
  end
  puts str
end

puts 'Enter a string.'

user_string = gets.chomp

reverse_inplace(user_string)