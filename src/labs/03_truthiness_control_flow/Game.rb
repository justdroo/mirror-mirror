class Game
  def initialize

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
      true
    else
      false
    end
  end

  def start(players, deck)
    deck.shuffle_cards
    players.each do |player|
      cards = deck.deal(7)
      player.add_to_hand(cards)
    end
  end

  def take_turn(player)
    player.your_turn
    puts "Select a card #{player.type}"
    puts ""
    card = select_card(player)
    puts "#{player.type} selected #{card}..."
    card
  end

  def check_card(players_turn, players, selected_card)
    players.each do |player|
      if player != players_turn
        return player.hand.include?(selected_card)
      end
    end
  end

  def select_card(player)
    if player.type == 'human'
      get_user_input
    elsif player.type == 'computer'
      player.auto_select
    end
  end

  def transfer_cards(players_turn, players, card)
    number_of_cards = 0

    players.each do |player|
      if players_turn != player
        player.hand.uniq.each do |card_in_hand|
          if card == card_in_hand
            number_of_cards = player.hand.count(card)
          end
        end
        player.remove_from_hand(card)
      end
    end

    number_of_cards.times do
      players_turn.add_to_hand(card)
    end
  end

  def go_fish(player, deck)
    player.add_to_hand(deck.pick_top_card)
  end

  def change_turn(players)
    players.each do |player|
      if player.id != @turn
        @turn = player.id
      end
    end
  end

  def finished(human, computer, deck)
    true if deck.cards_remaining == 0 || human.hand.count == 0 || computer.hand.count == 0
  end

  def get_user_input
    print ">> "
    user_input = gets.chomp
  end

end
