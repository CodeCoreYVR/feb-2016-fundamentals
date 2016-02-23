def hello(greeting, *names)
  g = names.join(" ! ")
  "#{greeting}: #{g}"
end


p hello("nice day", "derek", "jon", "emily")
