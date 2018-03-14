# key must return boolean
class AnswerKey
  # used to check "short_answer" questions from quiz_key
  # method name should match "solution:"

  def execute(problem, input)
    case problem[:solution]
    when "if_statement"
      if_statement(input)
    when "case_statement"
      case_statement(input)
    end
  end

  def if_statement(input)
    stripped_input = input.downcase.gsub(/\s+/, "")

    greater_than  = "ifmoney_in_wallet>cost_of_cookies"
    less_than     = "ifcost_of_cookies<money_in_wallet"

    if stripped_input.include?(greater_than) || stripped_input.include?(less_than)
      true
    else
      statement_if    = stripped_input.include?("if")
      right_operator  = stripped_input.include?("<") || stripped_input.include?(">")
      variables_names = stripped_input.include?("money_in_wallet") &&    stripped_input.include?("cost_of_cookies")
      puts ""
      puts "ERRORS:"
      puts "Conditional statement" if !statement_if
      puts "Operator" if !right_operator
      puts "Variable names" if !variables_names
      puts ""
      false
    end
  end

  def case_statement(input)
    stripped_input = input.downcase.gsub(/\s+/, "")

    statement_case  = stripped_input.include?("case")
    case_name       = stripped_input.include?("animal")

    if stripped_input == "caseanimal"
      true
    else
      puts ""
      puts "ERRORS:"
      puts "Conditional statement" if !statement_case
      puts "Variable name" if !case_name
      puts ""
      false
    end
  end
end
