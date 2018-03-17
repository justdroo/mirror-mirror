require_relative './mad_lib'

madLib = Lab.new()

name = madLib.return_a_string
age = madLib.return_an_integer

adjectives = madLib.return_an_array
last_adjective = adjectives.pop
adj_string = adjectives.join(", ") + " and " + last_adjective

favorite_things = madLib.return_a_hash
favorites = favorite_things.map { |key, value| "My favorite #{key} is #{value}." }
all_favorites = favorites.join(" ")

if madLib.return_true == true
  i_am = "I am an excellent programmer, "
end

if madLib.return_false == false
  i_am_not = "and that is not fake news!"
end

puts "Hello World! My name is #{name}. I am #{age} years old and I am #{adj_string}. #{all_favorites} #{i_am}#{i_am_not}"
