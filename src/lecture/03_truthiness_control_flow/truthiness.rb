def truthiness_in_ruby
  column = "||"
  line = "-------------------------------"

  puts column + line + column
  puts column + line + column
  puts "||    VALUE     ||    TRUTHY?    ||"
  puts column + line + column
  puts column + "     ' '      ||       ✅       " + column
  puts column + line + column
  puts column + "   'Hello'    ||       ✅       " + column
  puts column + line + column
  puts column + "      0       ||       ✅       " + column
  puts column + line + column
  puts column + "      6       ||       ✅       " + column
  puts column + line + column
  puts column + "     7+12     ||       ✅       " + column
  puts column + line + column
  puts column + " {yo: 'sup'}  ||       ✅       " + column
  puts column + line + column
  puts column + "['yo', 'sup'] ||       ✅       " + column
  puts column + line + column
  puts column + "     true     ||       ✅       " + column
  puts column + line + column
  puts column + "     false    ||       ❌       " + column
  puts column + line + column
  puts column + "      nil     ||       ❌       " + column
  puts column + line + column
  puts column + line + column
end
