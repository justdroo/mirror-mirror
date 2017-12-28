require './dataTypesTerminalTrivia'
require './quiz_file'
require './answer_key'

puts ""
puts "Welcome Students"
puts "Let's see how much you remember about Data Types!"
puts ""
welcome()

quiz_stats = start_quiz(quiz())

final_score(quiz_stats)

try_again(quiz)
