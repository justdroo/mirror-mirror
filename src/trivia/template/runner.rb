require_relative './quiz_key'
require_relative './AnswerKey'
require_relative '../QuizGenerator'

new_quiz = QuizGenerator.new(@quiz_key, AnswerKey.new())
new_quiz.execute()
