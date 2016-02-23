city_ratings = {"Vancouver" => 10, "Richmond" => 8, "Burnaby" => 7}

# Loop over the hash above and print the city
# names only and then loop again and print ratings only.

city_ratings.each_key {|key| p key}
puts "****************************"
city_ratings.each_value {|v| p v}
