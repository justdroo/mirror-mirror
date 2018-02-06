def returning_values
  column = "||"
  line = "-------------------------------------------"

  puts column + line + column
  puts column + line + column
  puts "||        CODE         ||     RETURN VALUE   ||"
  puts column + line + column
  puts column + "      'Hello World'  ||   'Hello World'    " + column
  puts column + line + column
  puts column + "               6+3   ||    9               " + column
  puts column + line + column
  puts column + "   theWord = 'bird'  ||    'bird'          " + column
  puts column + line + column
  puts column + "     total = 5 + 4   ||    9               " + column
  puts column + line + column
  puts column + " puts 'hello world'  ||    nil             " + column
  puts column + line + column
  puts column + " print 'hello world' ||    nil             " + column
  puts column + line + column
  puts column + line + column
end
