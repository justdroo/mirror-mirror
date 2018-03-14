require_relative '../../labs/03_truthiness_control_flow/Game.rb'

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
      hand_size = 7

      # ACT
      game.start([player_1, player_2], deck, hand_size)

      # ASSERT
      expect(player_1.hand.length).to be(hand_size)
      expect(player_2.hand.length).to be(hand_size)
      expect(deck.cards.length).to eq(52 - (hand_size * 2) )
    end

    it "#take_turn : Prompts player to select a card and returns their answer after printing the selection to the screen" do
      # ARRANGE
      game = Game.new()
      player = Player.new()
      player.add_to_hand(["A"])

      # ACT
      chosen_card = game.take_turn(player)

      # ASSERT
      expect(chosen_card).to eq("A")
    end

    it "#check_card : Compare against all players to see if they have a matching card" do
      # ARRANGE
      game = Game.new()
      player_1 = Player.new()
      player_2 = Player.new()
      players = [player_1, player_2]
      player_1.add_to_hand(["A", "2"])
      player_2.add_to_hand(["A", "3"])

      # ACT
      match = game.check_card(player_1, players, "A")
      go_fish = game.check_card(player_1, players, "2")

      # ASSERT
      expect(match).to eq(true)
      expect(go_fish).to eq(false)
    end

    it "#select_card: Requests auto_select from player if they are a computer" do
      # ARRANGE
      game = Game.new()
      player = Player.new('computer')
      player.add_to_hand(["A"])

      # ACT
      selected_card = game.select_card(player)

      # ASSERT
      expect(selected_card).to eq("A")
    end

    it "#transfer_cards : Description" do
      # ARRANGE
      game = Game.new()
      player_1 = Player.new()
      player_2 = Player.new()
      players = [player_1, player_2]
      player_1.add_to_hand(["A", "2", "3"])
      player_2.add_to_hand(["A", "4", "5"])

      # ACT
      game.transfer_cards(player_1, players, "A")

      # ASSERT
      expect(player_1.hand.length).to eq(4)
      expect(player_2.hand.length).to eq(2)
      expect(player_2.hand.include?("A")).to eq(false)
      expect(player_1.hand.count("A")).to eq(2)
    end

    it "#go_fish : Description" do
      # ARRANGE
      game = Game.new()
      player = Player.new()
      deck = Deck.new()

      # ACT
      game.go_fish(player, deck)

      # ASSERT
      expect(player.hand.length).to eq(1)
    end

    it "#finished : Returns true when end conditions have been met" do
      # ARRANGE
      game = Game.new()
      no_hand_player = Player.new('human')
      has_hand_player = Player.new()
      has_hand_player.add_to_hand(["A", "2", "3"])
      deck_with_cards = Deck.new()
      deck_no_cards = Deck.new()
      deck_no_cards.deal(52)

      # ACT
      continue_playing = game.finished( has_hand_player,
                                        has_hand_player,
                                        deck_with_cards)
      one_player_out_of_cards = game.finished(  has_hand_player,
                                                no_hand_player,
                                                deck_with_cards)
      no_cards_in_deck = game.finished( has_hand_player,
                                        has_hand_player,
                                        deck_no_cards)

      # ASSERT
      expect(!!continue_playing).to eq(false)
      expect(one_player_out_of_cards).to eq(true)
      expect(no_cards_in_deck).to eq(true)
    end
end
