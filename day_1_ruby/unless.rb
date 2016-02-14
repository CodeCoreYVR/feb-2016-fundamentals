print "Give me a number: "

number = gets.to_i

puts "Your number is large" if number > 10 # inline conditional
# the above is the same as writing:
if number > 10
  puts "Your number is large"
end

puts "Your number is large" unless number <= 10
unless number <= 10
  puts "Your number is large"
end
