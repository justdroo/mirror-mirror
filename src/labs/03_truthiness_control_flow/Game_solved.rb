class Game
  attr_accessor :bait_card
  attr_writer :begin

  def initialize
    @begin = false
    @standard_hand_size = 7
    @bait_card = "🃏"
  end

  def welcome
    puts "==================="
    puts "==================="
    puts "Welcome to Go Fish!"
    puts "The high energy game of guessing and four of a kind!"
    puts ""
  end

  def ready
    puts "Type Start to begin playing"
    user_input = get_user_input
    if user_input.downcase == "start"
      @begin = true
    else
      @begin
    end
  end

  def start(deck:, human:, computer: )
    @human = human
    @computer = computer
    @deck = deck
    @players = [@human, @computer]
    @players_turn = @players[0]

    @deck.shuffle_cards
    @players.each do |player|
      cards = @deck.deal(@standard_hand_size)
      player.add_to_hand(cards)
    end
  end

  def finished
    if @deck.cards.length == 0 || @human.hand.count == 0 || @computer.hand.count == 0
      return true
    else
      return false
    end
  end

  def switch_turn
    case @players_turn.type
    when 'human'
      @players_turn = @computer
    when 'computer'
      @players_turn = @human
    end
  end

  def announce_turn
    puts "================================"
    print "#{@players_turn.type.upcase} TURN"
    print " || 👩: #{@human.points}   💽: #{@computer.points} \n"
    puts "================================"
    puts ""
    if @players_turn.type == 'human'
      puts " 👩  Your hand: #{@players_turn.hand}"
    else
      puts " 💽  Computer has #{@players_turn.hand.count} cards remaining"
    end
  end

  def pick_card
    puts ""
    puts "Select a card #{@players_turn.type}"
    puts ""

    if @players_turn.type == 'human'
      @bait_card = get_user_input.upcase
    elsif @players_turn.type == 'computer'
      @bait_card = @players_turn.auto_select
    else
      @bait_card = "🃏"
    end
  end

  def check_card
    print "#{@players_turn.type} chooses #{@bait_card}"
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    print "."
    match = false
    @players.each do |player|
      if player != @players_turn
        match = player.hand.include?(@bait_card)
      end
    end
    match
  end

  def transfer_cards
    sleep 1
    print "Reel it in! 🎣"
    puts ""
    sleep 1

    number_of_cards = 0

    @players.each do |player|
      if @players_turn != player
        player.hand.uniq.each do |card_in_hand|
          if @bait_card == card_in_hand
            number_of_cards = player.hand.count(card_in_hand)
          end
        end
        player.remove_from_hand(@bait_card)
      end
    end

    number_of_cards.times do
      @players_turn.add_to_hand(@bait_card)
    end
  end

  def go_fish
    sleep 1
    print "Go Fish! 🐟"
    puts ""
    sleep 1
    @players_turn.add_to_hand(@deck.pick_top_card)
  end

  private

  def get_user_input
    print ">> "
    user_input = gets.chomp
  end

end
