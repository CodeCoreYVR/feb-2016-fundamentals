# Write a hash that contains three Canadian provinces
# as keys and their capital as values. Then loop through
# it and print each province and its capital.

h = {
  "Ontario" => "Toronto",
  "British Columbia" => "Victoria",
  "Quebec" => "Quebec City"
}

h.each do |key, value|
  puts "#{key} : #{value}"
end
