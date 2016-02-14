# Solution 1
counter = 1

puts "Give me a number"
number = gets.to_i

while counter <= number
  puts "Hello World"
  counter += 1
end

# Solution 2
puts "Enter a number"
answer = gets.to_i

while answer > 0
  puts "Hello World"
  answer -= 1
end
