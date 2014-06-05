# TDD: Rock, Paper, Scissors

Create a Jasmine test suite to help you create the game Rock, Paper, Scissors. The rules are explained from small to big. Read them carefully and make sure there are no hidden or unclear requirements. If anything smells fishy... Ask!

## Guidelines
* First make it work, then make it right, then make it small, then make it fast. 
* Red-Green-Refactor. Don't forget the refactor step. You don't HAVE to refactor at EVERY step, but you should always CONSIDER whether you need to refactor.
* Do not use console.log. Just return strings where needed.

## The rules of the game:

* It is a two-player game
* There are three possible moves:
	* Rock
	* Paper
	* Scissors
* Winning conditions:
	* Rock crushes Scissors
	* Scissors cut Paper
	* Paper covers Rock
* A player wins the game if they have three sequential victories
* In case of a draw or a loss, the sequence is reset
* In case of a loss, the other player's winning sequence is incremented by one
* Once the game is won, attempting to play further moves results in a message indicating that a game has to be started before more moves can be played.
* If you try to play a move before you start a game, you should get a message telling you that a game has to be started before moves can be played.


### BONUS

Implement Rock-Paper-Scissors-Lizard-Spock :

* Scissors cut paper
* Scissors decapitate lizard
* Paper covers rock
* Paper disproves Spock
* Rock crushes lizard
* Rock crushes scissors
* Lizard poisons Spock
* Lizard eats paper
* Spock smashes scissors
* Spock vaporizes rock

### BONUS
* Display the appropriate verb as shown by the above list when returning the result.

### BONUS
* Hook it to an HTML page!
* It would be very cool if you had records of the sequences of moves in each game on the page, too.

### BONUS
* You did test-drive the HTML hook, didn't you? If not, don't worry, the hangman screencasts will give you a feel for how to do this. Then you should come back to this and TDD adding it to the HTML page.