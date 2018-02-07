# require_relative '02_methods'
require_relative '02_methods_answer_lab'
@shelter = MethodLab.new()

#change the name of your shelter by changing this variable by invoking 'name' on @shelter
shelter_name = "UNDEFINED"

line    = "============================"
columns = "||                        ||"
space   = ""

puts space
puts space

puts line
puts columns
puts "||  Welcome to #{shelter_name}  ||"
puts columns
puts line

puts space
puts space

animal = @shelter.looking_for

puts space

customer = @shelter.customer_info

puts space

animal_attributes = @shelter.perfect_match(animal, customer)

# EXTRA CREDIT
# - Can you refactor the welcome message into a method of `MethodLab`?
