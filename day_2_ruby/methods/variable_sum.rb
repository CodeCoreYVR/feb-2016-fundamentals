def sum(*numbers)
  result = 0
  numbers.each {|n| result += n}
  result
  #numbers.inject(0) {|n, sum| sum += n}
  #numbers.inject(:+)
end


p sum(1,2,3,4,5) #=> 15
