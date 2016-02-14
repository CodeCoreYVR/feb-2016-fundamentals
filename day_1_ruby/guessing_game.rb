random_number = 1 + rand(100)

puts "Guess a number between 1 and a 100"
guess = gets.to_i

while guess != random_number
  if guess < random_number
    puts "Guess Higher"
  elsif guess > random_number
    puts "Guess Lower"
  end
  guess = gets.to_i
  if guess == random_number
    puts "You got it!!!"
  end
end
