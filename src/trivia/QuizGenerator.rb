class QuizGenerator
  attr_accessor :points

  def initialize(quiz_key, answer_key)
    @quiz_key = quiz_key
    @answer_key = answer_key
    @points = 0
  end

  def execute
    welcome()
    start_quiz(@quiz_key[:quiz])
    final_score()
    try_again()
  end

  def welcome
    puts "-----------------------------"
    puts @quiz_key[:section_title]
    puts "-----------------------------"
    puts ""
    puts ""
    puts @quiz_key[:instructions]
    puts ""
    puts "When you are ready to begin, type 'Start' and hit enter."
    puts "If you would like to exit, hit ctrl + c"

    print ">> "
    start_response = gets.chomp

   if ready?(start_response)
     puts ""
     puts "Starting in..."
     puts ""
     puts "3"
     sleep 1
     puts "2"
     sleep 1
     puts "1"
     sleep 1
     puts "TERMINAL TRIVIA!"
     puts "-----------------------------"
     puts "-----------------------------"
   else
     welcome()
   end
  end

  def ready?(input)
    input.downcase == "start" ? true : false
  end

  def start_quiz(quiz)
    quiz.each_with_index { |problem, index|
      print "#{index + 1}."
      point = selection(problem)
      @points += point
    }
  end

  def selection(problem, firstAttempt = true)
    puts problem[:question]

    case problem[:type]
      when "multiple_choice"
        puts ""
        problem[:answers].map { |choice, answer| puts "[#{choice.upcase}] #{answer}" }
        puts ""
        puts "Please type the key for the best answer from above."
        puts "(hit enter when you are ready to submit)"
        print ">> "
        user_input_multiple_choice(problem, firstAttempt)
      when "short_answer"
        puts ""
        print ">> "
        user_input_short_answer(problem, firstAttempt)
      else
        puts "Trouble loading problem set...Make sure each questions has a type"
    end
  end

  def user_input_multiple_choice(problem, firstAttempt)
    input = gets.chomp

    if input.downcase == problem[:solution].downcase
      puts "✅ Correct!"
      puts "-----------------------------"
      puts "-----------------------------"
      firstAttempt ? 1 : 0
    else
      puts "❌ Incorrect, try again."
      puts ""
      selection(problem, false)
    end
  end

  def user_input_short_answer(problem, firstAttempt)
    input = gets.chomp
    correct = AnswerKey.new().execute(problem, input)

    if correct
      puts "Correct!"
      puts ""
      firstAttempt ? 1 : 0
    else
      puts "Incorrect, try again."
      puts ""
      puts "HINT:" if problem[:hint]
      puts problem[:hint] if problem[:hint]
      selection(problem, false)
    end
  end

  def final_score()
    total_questions = @quiz_key[:quiz].count

    puts "-----------------------------"
    puts "-----------------------------"
    puts "You're all done!"
    puts ""
    puts "You got #{@points} out of #{total_questions}"
    percentage = @points/total_questions.to_f * 100
    puts "That's a #{percentage}%"
  end

  def try_again()
    puts "-----------------------------"
    puts ""
    puts "Would you like to try again?"
    puts "[Yes]"
    puts "[No]"
    input = gets.chomp

    if input.downcase == "no"
      puts "-----------------------------"
      puts "Ending Terminal Trivia"
      puts "-----------------------------"
      sleep 1
      puts ""
      puts ""
      puts ""
      puts "Goodbye"
    else
      start_quiz(@quiz_key[:quiz])
    end
  end

end
