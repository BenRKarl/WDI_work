###Week01-Day02

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w01_submission`

---


# Morning
###Homework submission process
For a detailed description of how we set up our remotes and submit work, go [here](https://github.com/ga-students/WDI_NYC_Apr14_Proto/tree/master/w01/homework_submission).

At the end of the day, you should have a folder structure that looks something like this 

```bash

	-code
      -wdi
        - projects
        - misc
        - WDI_NYC_Apr14_Proto
```

___

# Part 1: ***Name Generator***

###Objectives: 
- ***Access and manipulate array data.***

###Prompt

In a file called `name.rb`, write Ruby code that completes the specified objectives.  

###Specification:

Create a file called `name.rb`.

1. Retrieve "Bumblebee" from the firstname list
2. Add "Matt" to the firstnamelist
3. Remove "Muffintop" from the firstnamelist
4. Find out the index of "Gigglesnort" in lastnamelist
5. Combine 1 randomly selected name from `firstnamelist` and 1 randomly selected name from `lastnamelist` to form a name.


```
firstnamelist = ["Bumblebee", "Bandersnatch", "Broccoli", "Rinkydink", "Bombadil", "Boilerdang", "Bandicoot", "Fragglerock", "Muffintop", "Crumplesack", "Congleton", "Blubberdick", "Buffalo", "Benadryl", "Butterfree", "Burberry", "Whippersnatch", "Buttermilk", "Beezlebub", "Budapest", "Boilerdang", "Blubberwhale", "Bumberstump", "Bulbasaur", "Cogglesnatch", "Liverswort", "Bodybuild", "Johnnycash", "Bendydick", "Burgerking", "Bonaparte", "Hairycooch", "Bunsenburner", "Billiardball", "Bukkake", "Baseballmitt", "Blubberbutt", "Baseballbat", "Rumblesack", "Barister", "Danglerack", "Rinkydink", "Bombadil", "Honkytonk", "Billyray", "Bumbleshack", "Snorkeldink", "Anglerfish", "Beetlejuice", "Bedlington", "Bandicoot", "Boobytrap", "Blenderdick", "Bentobox", "Anallube", "Pallettown", "Wimbledon", "Hairyballs", "Buttercup", "Blasphemy", "Syphilis", "Snorkeldink", "Brandenburg", "Barbituate", "Snozzlebert", "Tiddleywomp", "Bouillabaisse", "Wellington", "Benetton", "Bendandsnap", "Timothy", "Brewery", "Bentobox", "Brandybuck"];

lastnamelist = ["Coddleswort", "Curdlesnoot", "Calldispatch", "Humperdinck", "Rivendell", "Cuttlefish", "Lingerie", "Vegemite", "Ampersand", "Cumberbund", "Candycrush", "Clombyclomp", "Cragglethatch", "Nottinghill", "Cabbagepatch", "Camouflage","Creamsicle", "Curdlemilk", "Upperclass", "Frumblesnatch", "Crumplehorn", "Talisman", "Candlestick", "Chesterfield", "Bumbersplat", "Scratchnsniff", "Snugglesnatch", "Charizard", "Ballsacksnip", "Carrotstick", "Cumbercooch", "Crackerjack", "Crucifix", "Cuckatoo", "Cockletit", "Collywog", "Gigglesnort", "Capncrunch", "Covergirl", "Cumbersnatch", "Countryside","Coggleswort", "Splishnsplash", "Copperwire", "Animorph", "Curdledmilk", "Cheddarcheese", "Cottagecheese", "Crumplehorn", "Snickersbar", "Banglesnatch", "Stinkyrash", "Cameltoe", "Chickenbroth", "Concubine", "Candygram", "Moldyspore", "Chuckecheese", "Cankersore", "Crimpysnitch", "Wafflesmack", "Chowderpants", "Toodlesnoot", "Clavichord", "Cuckooclock", "Oxfordshire", "Cumbersome", "Chickenstrips", "Battleship", "Commonwealth", "Cunningsnatch", "Custardbath", "Kryptonite"]
```

___

# Part 2: ***Guess the number***
- ***Get user input***
- ***Use a while loop***


###Prompt:
- Create a ruby file `guess_the_number.rb`
- You are to generate a basic "guess my number" game.  The computer will pick a random number between 0 and 10.  The user will guess the number until they guess correctly.

###Specification:
- The user should be asked to guess a number
- If the user's guess is correct, the user should see a congratulatory message
- If the user's guess is not correct, the user should be asked to guess the number again.
- This should be done in a new file called guess_the_number.rb

###Bonuses
- When the user guesses incorrectly, tell them whether they guess too high or too low
- When the user guesses the number correctly, tell them how many guesses it took them.

___ 

#Part 3: ***Calculator***

###Objectives:
- Practice with functions, loops, conditions, user-input, switch/case

###Prompt
- You will be building a calculator.  A calculator can perform multiple arithmetic operations.  Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
- You should make git commits as you finish each phase, so you can see the history

###Specification:
- A user should be given a menu of operations
- A user should be able to choose from the menu
- A user should be able to enter numbers to perform the operation on
- A user should be shown the result
- This process should continue until the user selects a quit option from the menu

#####Commit 1
- Calculator functionality
  - Calculator should be able to do basic arithmetic (+,-, *, /)

#####Commit 2
- Advanced Calculator functionality
  - Calculator should be able to do basic arithmetic (exponents, square roots)

#####Commit 3
- User should be given a menu of Calculator functionality
- User should be able to choose intended functionality
- After each operation, the user should be returned to the menu until they quit

#####Commit 4 (Bonus)
- Add functionality for trigonometric functions (sin, cos, tan)
- Add functionality to include a factorial option