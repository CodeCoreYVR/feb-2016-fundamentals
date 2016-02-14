print "Give me a number: "

number = gets.to_i

# We use if/elsif/else to control the flow of our application
# you must have at least `if`.
# you must provide conditions for `if` and `elsif`
# you don't have to put a condition for `else` as it will do nothing
# you can only have 1 `if` and a maximum of 1 `else`.
# You can have as many `elsif` as you'd like
# The `else` condition must be defined at the very end
# in this case only one of the code blocks will be executed
if number > 10
  puts "Your number is large"
elsif number > 5
  puts "Your number is medium"
else
  puts "Your Number is small"
end
