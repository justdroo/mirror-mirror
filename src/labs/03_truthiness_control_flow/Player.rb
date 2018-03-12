class Player
  attr_accessor :hand, :points
  attr_reader :type

  def initialize(type)
    @hand = []
    @points = 0
    @type = type
  end

  def add_to_hand(cards)
    @hand << cards
    @hand.flatten!
    four_of_a_kind
  end

  def remove_from_hand(card)
    @hand.delete(card)
  end

  def show_hand
    @hand.sort!
    puts ""
    puts "YOUR HAND: #{@hand.to_s}"
    puts ""
  end

  def your_turn
    if @type == 'human'
      show_hand
    elsif @type == 'computer'
      puts "Computer has #{@hand.length} cards"
      sleep 2
    end
  end

  def auto_select
    sleep 2
    @hand.sample
  end

  private

  def four_of_a_kind
    @hand.uniq.each do |card|
      if @hand.count(card) == 4
        puts ""
        puts "WooHoo! #{@type} got four #{card}'s"
        puts ""
        @points += 1
        puts "That's a total of #{@points} points!"
        puts ""
        remove_from_hand(card)
      end
    end
  end
end
