require_relative './03_quiz_key'
require_relative './03_Answer_key'
require_relative '../QuizGenerator'

new_quiz = QuizGenerator.new(@quiz_key, AnswerKey.new())
new_quiz.execute()
