def happyBirthday(age, name)
  puts "Happy Birthday #{name}! Congrats on turning #{age}"
end

happyBirthday(275, age)
# Happy birthday Dr. Oo! Congrats on turning 275
# => nil

happyBirthday()
# ArgumentError: wrong number of arguments (given 0, expected 2)

def happyBirthday(age, name="to you")
  puts "Happy Birthday #{name}! Congrats on turning #{age}"
end

happyBirthday(275)
# Happy birthday to you! Congrats on turning 275
# => nil

happyBirthday("you scally wag", 275)
# Happy birthday you scally wag! Congrats on turning 275
# => nil
