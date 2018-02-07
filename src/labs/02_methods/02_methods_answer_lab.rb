class MethodLab
  # name should be a method that returns the name of your shelter as a string
  def name
    "uNdEfInEd"
  end

  def looking_for
    # using `gets.chomp` triggers the command line to ask for user input without including any spaces at the end of the line
    # ask the user what kind of animal they are looking for and return their response
    puts "Hello and welcome!"
    puts "What kind of pet friend are you looking for?"
    print ">> "

    gets.chomp
  end

  def customer_info
    # ask the customer for their name, age and job. Save their responses as variables and return a hash. EX: {name: var1, age: var2, job: var3}

    puts "Let's get to know you a little better!"
    puts ""
    puts "What's your name?"
    puts ""
    print ">> "

    name = gets.chomp

    puts "Nice to meet you #{name}! And how old are you?"
    print ">> "

    age = gets.chomp

    puts "You don't look a day over " + (age.to_i - 1).to_s + "!"
    puts "And how do you spend your time?"
    print ">> "

    occupation = gets.chomp

    { name: name,
      age: age,
      occupation: occupation }
  end

  # perfect_match should accept 3 arguments, `animal` and `custoner` are required with an optional `adjective` argument that defaults to 'cute'
  def perfect_match(animal, customer, adjective = 'cute')
    puts "..."
    sleep 1
    puts "..."
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    print "!"
    sleep 1
    puts ""
    puts "Excellent! We've found your perfect pet!"
    sleep 2
    puts "#{customer[:name]} since you're the kind of person to #{customer[:occupation].downcase}, "
    puts "we've found you the most#{adjective} little #{animal}..."
    sleep 3
    puts "Meet!
    ... well, what would you like to call them?"
    print ">> "
    pet_name = gets.chomp

    puts ""
    sleep 1
    puts "#{pet_name}, that's perfect! Well you two have fun,"
    sleep 2
    puts "here's to another #{customer[:age]} years!"
    sleep 2
    puts "Take care #{customer[:name]}!"
    puts ""
    puts ""
    sleep 3
    puts "END"

    {
      status: 200, message: "#{customer[:name]} became the pet parent of a #{animal}"
    }
  end
end
