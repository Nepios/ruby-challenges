guesses = 1
continue = true
secret_number = rand(1...100)

puts 'Guess a number between 1 and 100.'
while continue do
  guess = gets.chomp.to_i
  if guess > secret_number
    puts "The number is lower than #{guess}."
    guesses +=1
  elsif guess < secret_number
    puts "The number is higher than #{guess}."
    guesses +=1
  elsif guess == secret_number
    puts "Congratulations, you got it in #{guesses} tries."
    continue = false
  end
end
