######################
# Write code that prints every element in the two-dimensional array above multiplied by itself
a=[[1,2,3], [4,5,6], [1,2,3], [4,5,6]]

# a.each do |sub_ary|
#   sub_ary.each{|n| p n**n}
# end

a.flatten.each {|n| p n**n}
