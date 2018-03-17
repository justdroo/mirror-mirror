require_relative '../../labs/03_truthiness_control_flow/Player.rb'

describe Player do
  describe 'Human or computer playing Go Fish.'
    before do
      # This can be a useful method that runs before all of your tests
      # If you find yourself repeating information
      # store it up here like this:
      # @player_name = "Dr. Oo"
    end

    it "#the_method_name : A short description of what it does" do
      # ARRANGE
      # First, you'll want to set up you variables

      # ACT
      # Here you'll be calling the method you want to test

      # ASSERT
      # Finally you state your assertions of what everything should look like

      # Let's take a look at Player#add_to_hand
      #
      # // ARRANGE //
      # player = Player.new()
      # new_cards = ["1", "2", "2", "A", "K"]
      #
      # // ACT //
      #
      # player.add_to_hand(new_cards)
      #
      # // ASSERT //
      #
      # expect(player.hand).to equal(new_cards)
      # # Right now this will fail because the method is returning `four_of_a_kind`, is there a better place to call this method?
      # # How can you change this method to make the test pass?
    end
end
