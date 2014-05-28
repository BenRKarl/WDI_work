#WEEK 06 DAY 02
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w06_d02_submission`


___

# Word Ladder

## Overview
[Word ladder](http://en.wikipedia.org/wiki/Word_ladder) is a word game invented by Lewis Carroll. A word ladder puzzle begins with two words, and to solve the puzzle one must find a chain of other words to link the two, in which two adjacent words (that is, words in successive steps) differ by one letter.

COLD → CORD → CARD → WARD → WARM

## Your Task

Write a method that when given a four letter word, returns all of the four letter words words that can appear next to it in a word ladder. You are free to write any helper methods if you find them helpful.

Example:

```
word_ladder_neighbors("aloe")
=> ["alae", "alee", "alme", "alow", "floe", "sloe"]
```

## Bonus
One word in the list has 33 other words that can appear next to it. What is this word?

---

Source : http://www.reddit.com/r/dailyprogrammer/comments/149kec/1242012_challenge_114_easy_word_ladder_steps/
---



---


##Part 1
###Moody Person Object
- Create an array of 5 person objects
  - A person should have attributes including name, age, and mood
  - A person should be able to `introduce` itself
    - This introduction should reflect their mood
    - For example:
      - If the person is happy, their introduction may be
        - 'Hi!  I am Bob!  Pleased to meet you!'
      - If the person is unhappy, their introduction may be
        - 'hi...  Bob here...'
  - Note: How to implement mood is your decision.  It could be strings like 'happy' or 'unhappy' or it also could be a range of 0 to 10, where 10 is best mood ever and 0 is worst mood ever.  Your choice here.

---

##Part 2

##WDility
- Build your own javascript library called WDility
- Recreate several **Ruby** methods in javascript
- Use the jasmine tests to help drive your development, i.e. make the tests pass

###Specification:

- Your WDility.js must include a:
  - .first(array)
  - .last(array)
  - .each(array, function)
  - .map(array, function)
  - .select(array, function)
- Extra:
  - .reject(array, function)
  - .unique(array)


####examples of use:

```javascript

var myArray = [1, 2, 3, 4];

WDility.first(myArray);       // Should return the value 1

```


```javascript

var myArray = [1,2,3,4];

Wdility.map(myArray, function(elem){ return elem * 2}); // Should return this array: [2,4,6,8,10]


```

---

#####Commit 1
- Create a `WDility.js` file
- Start the file by naming your library as shown here:

```javascript

var WDility = {};

```

---

#####Commit 2
- Build out a .each functionaity as shown here:

```javascript

var WDility = {
  each: function(array, func) {
    for (i in array){
      func(array[i]);
    }
    return array
  },

};

```

---

#####Commit 2-5
- Implement:
  - .first(array)
  - .last(array)
  - .map(array, function)
  - .select(array, function)

---

#####Commit 6-7 (Bonus)
- Implement:
  - .reject(array, function)
  - .unique(array)




---

##Part 3
###Bank Account
- Create a bank account object
  - Include attributes:
    - balance
  - Include functions:
    - `makeDeposit`
    - `makeWithdrawal`
  - Notes:
    - Make sure the balance in an account can't go negative. If a user tries to withdraw more money than exists in the account, ignore the transaction.



---
