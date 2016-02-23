# Write a method that takes the hash and prints if the city
# is large (more than 100,000) or small (otherwise).
# Print something like: Vancouver is a large city

bc_cities_population = {vancouver: 2135201, victoria: 316327,
  abbotsford: 149855, kelowna: 141767, nanaimo: 88799,
  white_rock: 82368, kamloops: 73472, chilliwack: 66382 }

def large_or_small_city(hash)
  hash.each do |city, population|
    city_name = city.to_s.capitalize

    # descriptor = ""
    # if population > 100000
    #   descriptor = "large"
    # else
    #   descriptor = "small"
    # end

    descriptor = (population > 100000) ? "large" : "small"
    puts "#{city_name} is a #{descriptor} city"
  end
end

large_or_small_city(bc_cities_population)
