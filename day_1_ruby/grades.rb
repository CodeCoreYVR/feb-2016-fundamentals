puts "What was your score?"

score = gets.to_i

if score > 100
  puts "Your score must be less than a 100"
elsif score < 0
  puts "Your score must be more than 0"
elsif score >= 85
  puts "You got an A"
elsif score >= 73
  puts "You got a B"
elsif score >= 60
  puts "You got a C"
elsif score >= 50
  puts "You got a D"
else
  puts "You got an F"
end
