class Deck

  attr_reader :cards

  def initialize
    @cards = starting_deck
  end

  def shuffle_cards
    @cards.shuffle!
  end

  def pick_top_card
    @cards.shift
  end

  def deal(number_of_cards)
    hand = []
    number_of_cards.times do
      hand << pick_top_card
    end

    hand
  end

  def cards_remaining
    @cards.length
  end

  private

  def starting_deck
    cards = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    fifty_two_cards = []
    cards.each { |card| 4.times { fifty_two_cards << card } }

    fifty_two_cards
  end

end
