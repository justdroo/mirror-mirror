require_relative '../labs/03_truthiness_control_flow/Deck.rb'

describe Deck do
  describe 'Standard 52 card deck of cards'
    before do
      @standard_card_count = {
        "A" => 4, "2" => 4, "3" => 4, "4" => 4, "5" => 4,
        "6" => 4, "7" => 4, "8" => 4, "9" => 4, "10" => 4,
        "J" => 4, "Q" => 4, "K" => 4
      }
    end

    it "#initialize : Starts with 52 cards in standard order" do
      deck = Deck.new()
      cards = deck.cards
      deck_total = cards.length

      initialized_card_count = Hash.new(0)
      cards.each { |value|
        initialized_card_count[value] += 1
      }

      expect(deck_total).to be(52)
      expect(@standard_card_count).to eq(initialized_card_count)
    end

    it "#shuffle : Randomly orders the deck" do
      new_deck = Deck.new()

      shuffled_deck = Deck.new().shuffle_cards
      twice_shuffled = Deck.new().shuffle_cards

      expect(new_deck.cards).not_to eq(shuffled_deck)
      expect(shuffled_deck).not_to eq(twice_shuffled)
      expect(Deck.new().shuffle_cards).not_to eq(Deck.new().shuffle_cards)
    end

    it "#pick_top_card : Picks the top card off of the deck and removes it" do
      deck = Deck.new()
      deck.shuffle_cards

      top_card = deck.pick_top_card

      expect(@standard_card_count[top_card]).not_to eq(deck.cards.count(top_card))
      expect(deck.cards.count).to eq(51)
    end

    it "#deal : Batches cards into hands based on number paramater" do
      deck = Deck.new()
      deck.shuffle_cards

      hand_1 = deck.deal(5)
      hand_2 = deck.deal(5)
      hand_3 = deck.deal(7)

      cards_dealt = (hand_1 + hand_2 + hand_3).length
      expect(deck.cards.count).to eq(52 - cards_dealt)
      expect(hand_1).not_to eq(hand_2 || hand_3)
      expect(hand_1.length && hand_2.length).to eq(5)
      expect(hand_3.length).to eq(7)
    end
end
