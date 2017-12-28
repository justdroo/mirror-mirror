require_relative './01_quiz_key'
require_relative './01_AnswerKey'
require_relative '../QuizGenerator'

new_quiz = QuizGenerator.new(@quiz_key, AnswerKey.new())
new_quiz.execute()
