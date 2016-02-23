my_hash = { "BC" => ["Vancouver", "Richmond"],
            "AB" => ["Edmonton", "Calgary"]}

#Print all the keys in the hash above and all the
#members of the value arrays. For example:
#BC: Richmond, Vancouver

my_hash.each do |key, value|
  cities = value.join(", ")
  puts "#{key}: #{cities}"
end
