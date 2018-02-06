# key must return boolean
class AnswerKey

  def execute(problem, input)
    case problem[:solution]
    when "define_method"
      define_method(problem, input)
    when "accept_argument"
      accept_argument(problem, input)
    end
  end

  def define_method(problem, input)
    input_trimmed = input.trim
    input_trimmed == "def say_hello" ? true : false
  end

  def accept_argument(problem, input)
    input_no_white_space = input.gsub(/\s+/, "")
    input_no_white_space == "defsay_hello(name)" ? true : false
  end
end
