# Write a method that takes an array like the
# one above and returns a hash whose keys are
# symbols from the array and the value is the character count.
a=["hello", "greetings", "hola", "hi"]

def hashify(array)
  hash = {}
  array.each do |word|
    key = word.to_sym
    value = word.length
    hash[key] = value
  end

  return hash
end

p hashify(a)
