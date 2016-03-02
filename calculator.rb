def calculation (calc_type, num1, num2)
  result = 0
  if (calc_type.downcase == 'add')
    result = num1 + num2
  elsif (calc_type.downcase == 'sub')
    result = num1 - num2
  elsif (calc_type.downcase == 'mult')
    result = num1 * num2
  elsif (calc_type.downcase == 'div')
    result = num1 / num2
  end
  puts "Your result is #{result}"
end
    

puts 'What calculation would you like to do? (add, sub, mult, div)'

calculation_input = gets.chomp

puts 'What is number 1?'

number1 = gets.chomp.to_f

puts 'What is number 2?'

number2 = gets.chomp.to_f

calculation(calculation_input, number1, number2)
