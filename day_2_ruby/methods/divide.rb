# example of a 'guard clause' (return earlier from a method to 'guard' against certain known problems)
def divide(a,b)
  return "Can't divide by 0" if b == 0
  a/b
end

p divide(6,0)
