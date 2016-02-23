a = "the quick brown fox jumped over the fence"
sentence = []

a.split.each do |word|
  sentence << word.capitalize
end

puts sentence.join(" ")
