$balance = 0
continue = true

def deposit(amount)
  $balance += amount
  check_balance()
end

def withdraw(amount)
  if $balance > amount
    $balance -= amount
    check_balance()
  else 
    puts 'You do not have enough money in your account.'
  end
end

def check_balance
  puts "Your current balance is #{$balance}"
end

while continue do
  puts "You're current balance is #{$balance}"
  puts 'What would you like to do? (deposit, withdraw, check_balance)'
  transaction = gets.chomp
  if transaction == 'deposit'
    puts 'How much would you like to deposit?'
    deposit_amount = gets.chomp.to_i
    deposit(deposit_amount)
  elsif transaction == 'withdraw'
    puts 'How much would you like to withdraw?'
    withdraw_amount = gets.chomp.to_i
    withdraw(withdraw_amount)
  elsif transaction == 'check_balance'
    check_balance()
  end
  puts 'Are you done?'
  done = gets.chomp
  if done.downcase == 'yes'
    continue = false
  else 
    continue = true
  end
end
    
