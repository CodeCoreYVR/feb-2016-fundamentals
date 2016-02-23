a=["hello","world","derek"]

b = a.map do |word|
  word.capitalize
end

# b=[]
# a.each do |word|
#   b << word.capitalize
# end

puts a.inspect
puts "*******"
puts b.inspect
