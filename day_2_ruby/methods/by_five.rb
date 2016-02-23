#Write a method  called by_five? that takes a single
#number parameter, and returns true if that number
#is evenly divisible by five and false if not. Don’t
#use return in this case.

def by_five?(n)
  n % 5 == 0
end

p by_five?(5) #true
p by_five?(6)  #false
