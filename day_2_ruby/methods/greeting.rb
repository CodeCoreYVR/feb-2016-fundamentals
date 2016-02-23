# Write a method that takes one argument as name
# and then greets that name. For example:
################################################
# >> greeting(“codecore”)
# >> Hello Codecore!

def greeting(name)
  "Hello #{name.capitalize}!"
end

p greeting("codecore")
