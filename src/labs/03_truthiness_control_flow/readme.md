# Go Fish 🐟

### DECK

A standard 52 card pack of 13 cards in 4 suits.
(A,2,3,4,5,6,7,8,9,J,Q,K x Clubs, Spades, Diamonds, Hearts)

However, for this game we will only need to know the values, not the suits

### Objective

Collect the most 4 of a kinds before the game ends. For example 4 kings, 4 aces, 4 threes and so on.

### Starting the game

For the purpose of this lab, only one human and the computer will be playing.
Once the player is ready, the game will start and deal 7 cards to both the human and the computer. Turn is hardcoded to start with the human.

### Ending the Game

Once there are no cards in the deck OR the human's hand OR the computer's hand, the game is over.

### Gameplay

At the beginning of a turn, the players turn is first announced, then the player is asked to pick a card as the bait card. If the bait card matches a card in the other players hand, those cards will be transferred back to the player whose turn it is. They will continue picking cards until they guess wrong.

If they choose incorrectly, they will go fish (pick a card from the top of the deck and add it to their hand).
At this point, the turn will switch to the other player.

## Tests

To run all tests on this lab, enter into the terminal:
`rspec spec/03_truthiness_control_flow`

You should see that some of the tests have already been completed. If you want to only run a specific file, add the file name to the path. For example:

`rspec spec/03_truthiness_control_flow/Game.rb`

## Lab

Either

`rake run_lab:3`

or

`ruby labs/03_truthiness_control_flow/runner.rb`

#### Bonus
Once you get the lab completed, try out some of these challenges below.

- The Player class is a mess and we don't have any tests! Check out the spec folder and try writing some tests for the Player class. You might need to refactor the methods to work. Look at some of the other tests written for this lab.
- Take a look at the Deck class, can you understand what they methods are doing? Google around and see if you can figure it out!
- What is a private method?
- What is an `attr_accessor` and how is it related to `attr_reader` and `attr_writer`?
- What if both players were computers? What if they were both human?
- How would you play with more than 2 players?
