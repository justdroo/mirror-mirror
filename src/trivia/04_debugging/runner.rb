require_relative './quiz_key'
require_relative '../QuizGenerator'

new_quiz = QuizGenerator.new(@quiz_key)
new_quiz.execute()
