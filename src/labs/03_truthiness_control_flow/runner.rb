# loading the files we will need to run the game
require_relative "./Deck.rb"
require_relative "./Player.rb"
require_relative "./Game.rb"
require 'byebug'

#creating a new instance of each
@game     = Game.new()
@deck     = Deck.new()
@human    = Player.new('human')
@computer = Player.new('computer')

#running our game

@game.welcome
if @game.ready
  @game.start({
    deck: @deck,
    human: @human,
    computer: @computer
    })
else
  @game.over
end

until @game.finished do
  @game.announce_turn
  @game.pick_card
  matching = @game.check_card
  if matching
    @game.transfer_cards
  else
    @game.go_fish
    @game.switch_turn
  end
end
@game.over
