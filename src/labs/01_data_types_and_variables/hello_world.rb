require 'sinatra'
require 'byebug'

require_relative './01_data_types_and_variables'

get '/' do
  myLab = Lab.new()

  name = myLab.return_a_string
  age = myLab.return_an_integer

  adjectives = myLab.return_an_array
  last_adjective = adjectives.pop
  adj_string = adjectives.join(", ") + " and " + last_adjective

  favorite_things = myLab.return_a_hash
  favorites = favorite_things.map { |key, value| "My favorite #{key} is #{value}." }
  all_favorites = favorites.join(" ")

  if myLab.return_true == true
    i_am = "I am an excellent programmer, "
  end

  if myLab.return_false == false
    i_am_not = "and that is not fake news!"
  end
  "Hello World! My name is #{name}. I am #{age} years old and I am #{adj_string}. #{all_favorites} #{i_am}#{i_am_not}"
end
