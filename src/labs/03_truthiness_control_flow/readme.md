# Rules of Go Fish

### DECK

A standard 52 card pack
A,2,3,4,5,6,7,8,9,J,Q,K x Clubs, Spades, Diamonds, Hearts

### Objective

Collect the most 4 of a kinds such as 4 kings, 4 aces, 4 threes and so on.

### Starting the game

For the purpose of this lab, only you and the computer will be playing.
Deal seven cards each to yourself and the computer. The remaining cards will form the deck players will pick from.

### Gameplay

Starting with the human player, allow them to see their hand (but not the computers) and ask the computer for a type of card. For example:
```
A,2,2,5,7,J,J

Do you have any...
>>
```

If the card they request is in the computers hand, the computer transfers all of their matching cards to the human player and the human may ask again. Otherwise, the computer will say `Go Fish!` and you will add a card from the deck to the human's hand. At this point the human's turn is over.

Now it is the computers turn. You will need to figure out the best way of programmatically selecting a card from their hand to ask the human.

If at any time the human or computer player collects 4 of a kind, those cards are removed from their hand and that player is given a point.

### Winning

Once the deck is depleted AND there are no more cards to be played, the game is over and the player with the most points wins.

### Additional Rules

If at any point a player runs out of cards in their hands during a turn, and there are still cards in the deck, they will receive an additional 5 cards and continue their turn.
