# Solution 1
counter = 1

while counter < 101
  if counter % 3 == 0 && counter % 5 == 0
    puts "FIZZBUZZ"
  elsif counter % 3 == 0
    puts "FIZZ"
  elsif counter % 5 == 0
    puts "BUZZ"
  else
    puts counter
  end
  counter += 1
end

# Solution 2
for counter in 1..100
  if counter % 3 == 0 && counter % 5 == 0
    puts "FIZZBUZZ"
  elsif counter % 3 == 0
    puts "FIZZ"
  elsif counter % 5 == 0
    puts "BUZZ"
  else
    puts counter
  end
end
