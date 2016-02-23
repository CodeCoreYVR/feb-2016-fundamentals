a = "the quick brown fox jumped over the fence"
sentence = []

a.split.each do |word|
  word_array = word.chars
  #this next line would FAIL if the sentence 'a' contained a word that didn't have 3 letters. we would in real life situations write code to guard against this, but for this demo we will just leave it.
  word_array[2] = word_array[2].upcase
  sentence << word_array.join
end

puts sentence.join(" ")
