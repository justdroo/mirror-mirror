require_relative './03_quiz_key_a'
require_relative './03_quiz_key_b'
require_relative './03_Answer_key'
require_relative '../QuizGenerator'

def select_section
  puts ""
  puts "Please enter the section id:"
  puts ""
  puts "[1] : Truthiness"
  puts "[2] : Control Flow"

  print ">> "
  input = gets.chomp

  if input == "1"
    new_quiz = QuizGenerator.new(@quiz_key_a, AnswerKey.new())
  elsif input == "2"
    new_quiz = QuizGenerator.new(@quiz_key_b, AnswerKey.new())
  else
    puts "===================================================="
    puts "      INVALID INPUT: '#{input}', does not match"
    puts "      Please enter the number 1 or 2"
    puts "===================================================="
    return
  end

  new_quiz.execute
end

select_section
