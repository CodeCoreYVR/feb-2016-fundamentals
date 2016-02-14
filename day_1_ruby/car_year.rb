puts "What year is your car?"

number = gets.to_i

if number > 2016
  puts "Your car is in the future"
elsif number < 1985
  puts "Your car is very old"
elsif number >= 2008
  puts "Your car is new"
elsif number >= 1985
  puts "Your car is old"
end


if number > 2016
  puts "Your car is in the future"
elsif number >= 2008
  puts "Your car is new"
elsif number >= 1985
  puts "Your car is old"
else
  puts "Your car is very old"
end
