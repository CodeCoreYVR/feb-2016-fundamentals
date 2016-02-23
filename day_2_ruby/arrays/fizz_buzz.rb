result = []
for n in 1..100
  m3 = (n % 3 == 0)
  m5 = (n % 5 == 0)

  if m3 && m5
    result << "FIZZBUZZ"
  elsif m3
    result << "FIZZ"
  elsif m5
    result << "BUZZ"
  else
    result << n
  end
end

p result
