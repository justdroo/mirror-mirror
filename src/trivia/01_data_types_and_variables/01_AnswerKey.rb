# key must return boolean
class AnswerKey

  def execute(problem, input)
    case problem[:solution]
    when "type_of_integer"
      type_of_integer(problem, input)
    end
  end

  def type_of_integer(problem, input)
    to_num = input.to_i
    to_num > 0 || to_num < 0 ? true : false
  end
end
