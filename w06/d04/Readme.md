#Javascript!!!

###ATM application (WITHOUT jQuery)
- Keep track of checking and savings balances
  - As a user, I want to deposit money into one of my accounts
    - Make sure you are updating the display and manipulating the HTML of the page so a user can see the change.
  - As a user, I want to withdraw money from one of my accounts
    - Make sure you are updating the display and manipulating the HTML of the page so a user can see the change.
    - Make sure the balance in an account can't go negative. If a user tries to
withdraw more money than exists in the account, ignore the transaction.
    - When the balance of the bank account is $0 the background of that bank account
should be red.
    - It should be gray when there is money in the account.
    - What happens when the user wants to withdraw more money from the checking
account than is in the account? These accounts have overdraft protection, so if
a withdrawal can be covered by the balances in both accounts, take the checking
balance down to $0 and take the rest of the withdrawal from the savings account. If the withdrawal amount is more than the combined account balance, ignore the transaction.


#####Note: You may need to take advantage of these functions:
```javascript

parseInt
parseFloat
```

---

###A Javascript ToDo Application (without jQuery)
- Must be able to create new tasks and complete tasks
- Take it further!

---

###A Javascript ToDo Application (with jQuery)
- Must be able to create new tasks and complete tasks
- Take it further!

---


###Hangperson Game
- **The Game**
  - The game selects a random word from a word list and makes that the secret word
  - The player guesses one letter at a time, trying to figure out what the word is
  - If the player guesses correctly, any instances of that letter are revealed in the secret word
  - If the player guesses incorrectly, they are penalized by taking away a guess
  - If a player reveals all of the letters of the secret word, they win
  - If a player makes 8 incorrect guesses before solving the secret word, they lose
- **To Do**
  - Plan out your object model. What variables and functions will each object have? How will the different objects communicate with each other?
  - Get the logic to work and make sure you have the game working in the console first **BEFORE** translating it over to update the DOM.
  - Translate your game over so it updates the DOM.
    - Implement a "reset" button that will reset the game and choose a new word
      - Implement a "give up" button that will show the solution
  - Validate the input so that only single letters are accepted as guesses
- **Bonus**
  - Change the input format so that there is no text field. You can get input by "listening" to the keyup event and figuring out which key was pressed.
- **Bonus**
  - Draw the hangperson stick figure using CSS
  - Implement a "hint" button that will reveal one of the letters in the word

---

###Javascript The Good Parts
- Watch this 1hr video: (http://youtu.be/hQVTIJBZook)[http://youtu.be/hQVTIJBZook]
