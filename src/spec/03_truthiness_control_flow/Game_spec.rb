require_relative '../../labs/03_truthiness_control_flow/Game.rb'
# TODO
# switch_turn : should switch @game.players_turn

describe Game do
  describe 'The machine running the game controls. Think of me like the rulebook.'
    before do
    end

    it "#welcome : says hello" do
      # ARRANGE
      game = Game.new()

      # ACT
      output = game.welcome

      # ASSERT
      expect(output).to be(nil)
    end

    it "#start : Deals players the correct hand" do
      # ARRANGE
      game = Game.new()
      player_1 = Player.new()
      player_2 = Player.new()
      deck = Deck.new()
      standard_hand_size = 7

      # ACT
      game.start({
        deck: deck,
        human: player_1,
        computer: player_2
      })

      # ASSERT
      expect(player_1.hand.length).to be(standard_hand_size)
      expect(player_2.hand.length).to be(standard_hand_size)
      expect(deck.cards.length).to eq(52 - (standard_hand_size * 2) )
    end

    it "#finished : Returns true when no cards in the deck" do
      # ARRANGE
      player_1 = Player.new()
      player_2 = Player.new()
      player_1.add_to_hand(["A", "2", "3"])
      player_2.add_to_hand(["A", "2", "3"])
      deck_no_cards = Deck.new()
      deck_no_cards.deal(52)

      # ACT
      no_cards_in_deck = Game.new()
      no_cards_in_deck.start(
        human: player_1,
        computer: player_2,
        deck: deck_no_cards)
      stop_no_deck = no_cards_in_deck.finished

      # ASSERT
      expect(stop_no_deck).to eq(true)
    end

    it "#finished : Returns true when a player is out of cards" do
      # ARRANGE
      no_hand_player = Player.new()
      player_2 = Player.new()
      deck = Deck.new()

      # ACT
      one_player_out_of_cards = Game.new()
      one_player_out_of_cards.start(
        human: no_hand_player,
        computer: player_2,
        deck: deck)
      no_hand_player.hand = []
      stop_no_hand = one_player_out_of_cards.finished

      # ASSERT
      expect(stop_no_hand).to eq(true)
    end

    it "#finished : Returns false when players hands and deck both have cards left" do
      # ARRANGE
      player_1 = Player.new()
      player_2 = Player.new()
      deck = Deck.new()

      # ACT
      continue_playing = Game.new()
      continue_playing.start(
        human: player_1,
        computer: player_2,
        deck: deck)
      rules_met = continue_playing.finished

      # ASSERT
      expect(rules_met).to eq(false)
    end

    it "#pick_card : Prompts player to select a card and returns their answer after printing the selection to the screen. Autoselects when player is a computer" do
      # ARRANGE
      game = Game.new()
      player_1 = Player.new()
      player_2 = Player.new()
      deck = Deck.new()
      game.start(
        human: player_1,
        computer: player_2,
        deck: deck
      )
      player_1.hand = ["A"]

      # ACT
      chosen_card = game.pick_card

      # ASSERT
      expect(chosen_card).to eq("A")
    end

    it "#check_card : Compare against all players to see if they have a matching card" do
      # ARRANGE
      game = Game.new()
      player_1 = Player.new()
      player_2 = Player.new()
      deck = Deck.new()
      game.start(
        human: player_1,
        computer: player_2,
        deck: deck
      )
      player_1.hand = (["A", "2"])
      player_2.hand = (["A", "3"])

      # ACT
      game.bait_card = "A"
      match = game.check_card
      game.bait_card = "4"
      go_fish = game.check_card

      # ASSERT
      expect(match).to eq(true)
      expect(go_fish).to eq(false)
    end

    it "#transfer_cards : Description" do
      # ARRANGE
      game = Game.new()
      player_1 = Player.new()
      player_2 = Player.new()
      game.start(
        human: player_1,
        computer: player_2,
        deck: Deck.new()
      )
      player_1.hand = ["A", "2", "3"]
      player_2.hand =["A", "4", "5"]

      # ACT
      game.bait_card = "A"
      game.transfer_cards

      # ASSERT
      expect(player_1.hand.length).to eq(4)
      expect(player_2.hand.length).to eq(2)
      expect(player_2.hand.include?("A")).to eq(false)
      expect(player_1.hand.count("A")).to eq(2)
    end

    it "#go_fish : Description" do
      # ARRANGE
      game = Game.new()
      player_1 = Player.new()
      player_2 = Player.new()
      game.start(
        human: player_1,
        computer: player_2,
        deck: Deck.new()
      )

      # ACT
      player_1.hand = []
      player_2.hand = []
      game.bait_card = "A"
      game.go_fish

      # ASSERT
      expect(player_1.hand.length).to eq(1)
    end
end
