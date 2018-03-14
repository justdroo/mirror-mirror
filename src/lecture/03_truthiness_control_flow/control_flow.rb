def overview
  puts ""
  puts "CONDITIONAL STATMENTS"
  puts ""
  puts " --> if statements"
  puts ""
  puts " --> case statements"
  puts ""
  puts " --> loops"
  puts ""
end

def say_hello(language)
  case language
  when "Azerbaijani"
    print "Salam Dünya"
  when "Bulgarian"
    print "Здравей свят"
  when "Catalan"
    print "Hola món"
  when "English"
    print "Hello World"
  else
    print "0010010101001010100010"
  end
end

overview
