require_relative 'User'
require_relative 'Narrative'
require_relative 'GameEngine'
require 'byebug'

@user = User.new()
@narrative = Narrative.new()
@game = GameEngine.new()

@narrative.welcome
@narrative.get_name
@user.name = @user.get_user_input
chapter_title = "The one where #{@user.name.upcase} starts the adventure"
@narrative.announce_chapter("ONE", chapter_title)


@narrative.starting_out
choice = @user.get_user_input
match = @game.text_match(choice, 'quiet hide')
if match
  @next_chapter = @narrative.safe
else
  @next_chapter = @narrative.vaporized
end
