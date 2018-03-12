# loading the files we will need to run the game
require_relative "./Deck.rb"
require_relative "./Player.rb"
require_relative "./Game.rb"
require 'byebug'

#creating a new instance of each
@deck     = Deck.new()
@human    = Player.new('human')
@computer = Player.new('computer')
@game     = Game.new()

# variables to make things easier
@players  = [@human, @computer]
@players_turn = @human

#running our game

@game.welcome
player_is_ready = @game.ready

if player_is_ready
  @game.start(@players, @deck)
else
  return nil
end

until @game.finished(@human, @computer, @deck) do
  puts "================================"
  puts "#{@players_turn.type.upcase} TURN"
  puts "================================"
  selected_card = @game.take_turn(@players_turn)
  card_in_hand = @game.check_card(@players_turn, @players, selected_card)

  if card_in_hand
    sleep 2
    puts ""
    puts "Reel in that #{selected_card}!"
    puts ""
    @game.transfer_cards(@players_turn, @players, selected_card)
  else
    sleep 2
    puts ""
    puts "Go Fish #{@players_turn.type}!"
    puts ""
    @game.go_fish(@players_turn, @deck)

    case @players_turn
    when @human
      @players_turn = @computer
    when @computer
      @players_turn = @human
    end
  end
end

puts "====================="
puts "      GAME OVER"
puts "====================="
puts ""
puts "FINAL SCORE"
puts "-------------"
puts "HUMAN: #{@human.points}"
puts "COMPUTER: #{@computer.points}"
