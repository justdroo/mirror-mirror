def welcome
  puts "Type 'Start' when you are ready to begin"

  start_response = gets.chomp

   if ready?(start_response)
     puts ""
     puts "Let's begin..."
     puts ""
   else
     welcome()
   end
end

def ready?(input)
  input.downcase == "start" ? true : false
end

def start_quiz(quiz)
  @points = 0
  quiz.map { |problem|
    point = selection(problem)
    @points += point
  }
  {score: @points, quiz: quiz}
end

def selection(problem)
  puts problem[:question]

  case problem[:type]
    when "multiple_choice"
      problem[:answers].map { |choice, answer| puts "[#{choice.upcase}] #{answer}" }
      puts ""
      puts "Please type the key for the best answer from above."
      puts "(hit enter when you are ready to submit)"
      user_input_multiple_choice(problem)
    when "short_answer"
      puts ""
      user_input_short_answer(problem)
    else
      puts "Trouble loading problem set...Make sure has a type"
  end
end

def user_input_multiple_choice(problem)
  input = gets.chomp

  if input.downcase == problem[:solution].downcase
    puts "Correct!"
    puts ""
    1
  else
    puts "Incorrect, try again."
    puts ""
    selection(problem)
    0
  end
end

def user_input_short_answer(problem)
  input = gets.chomp
  correct = AnswerKey.new().execute(problem, input)

  if correct
    puts "Correct!"
    puts ""
    1
  else
    puts "Incorrect, try again."
    puts ""
    print "HINT:"
    puts problem[:hint]
    selection(problem)
    0
  end
end

def final_score(quiz_stats)
  score = quiz_stats[:score]
  total_questions = quiz_stats[:quiz].count

  puts "You got #{score} out of #{total_questions}"
  percentage = score/total_questions * 100
  puts "That's a #{percentage}%"
end

def try_again(quiz)
  puts ""
  puts "Would you like to try again?"
  puts "[Yes]"
  puts "[No]"
  input = gets.chomp

  if input.downcase == "no"
    puts "Good Work!"
  else
    start_quiz(quiz)
  end
end
