# key must return boolean
class AnswerKey
  # used to check "short_answer" questions from quiz_key
  # method name should match "solution:"

  def execute(problem, input)
    case problem[:solution]
    when "type_of_integer_not_zero"
      type_of_integer_not_zero(problem, input)
    end
  end

  def type_of_integer_not_zero(problem, input)
    to_num = input.to_i
    to_num > 0 || to_num < 0 ? true : false
  end
end
