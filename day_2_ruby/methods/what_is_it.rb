
def what_is_it(x)
  case x
  when String
    "String"
  when Integer
    "Integer"
  when Array
    "Array"
  else
    "something else"
  end

  # if x.is_a?(String)
  #   "String"
  # elsif x.is_a?(Integer)
  #   "Integer"
  # elsif x.is_a?(Array)
  #   "Array"
  # else
  #   "something else"
  # end
end

p what_is_it("Hello") # String
p what_is_it(1)       # Integer
p what_is_it([1,2,3]) # Array
p what_is_it(false)   # something else
