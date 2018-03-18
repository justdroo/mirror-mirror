class Narrative
  def welcome
    puts "Ready to start the game?"
  end

  def get_name
    puts "Hey there stranger, what's your name?"
  end

  def announce_chapter(number, title)
    puts "======================"
    puts "  CHAPTER #{number}: "
    puts "  #{title}"
    puts "======================"
  end

  def starting_out
    puts "You wake up in an unfamiliar location."
    space 1
    sleep 1
    print "You look around. "
    sleep 1
    print "You are in a dimly lit room."
    sleep 1
    print "The light clicks on suddenly"
    space(2)
    puts "What do you do?"
  end

  def vaporized
    puts "You are vaporized immediately"
  end

  def safe
    puts "You seem safe...for now"
  end

  private

  def space(number_to_create)
    number_to_create.times do
      puts ""
    end
  end
end
