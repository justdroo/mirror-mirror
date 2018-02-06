require_relative './02_quiz_key'
require_relative './02_AnswerKey'
require_relative '../QuizGenerator'

new_quiz = QuizGenerator.new(@quiz_key, AnswerKey.new())
new_quiz.execute()
