#WEEK 07 DAY 03
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w07_d03_submission`
---
# Pizza Party
---

##Part 1: Model and Collection
- Using your C.R.U.D. app from last night
	- Implement a **model** and **collection** in javascript (as seen in class)
		- The **model** must have a `el` attribute and a `render` function.  
			- Do NOT place the elements on the screen.  Manually verify the model's behaviors in the console.
		- The **collection** must have a `models` attribute and a `fetch` method. 
			- `fetch` should make an ajax request to your rails app's sever.  After `fetch` is evaluated the models attribute of the collection should contain Javascript model's corresponding to each of your rows in your database. 
			- Do NOT place the elements on the screen.  Call fetch in the console.  Manually verify the models are in the collection afterwards.

---

##Part 2: LOTR DOM Manipulation

Create a function for each of the following steps to practice DOM Manipulation and JavaScript.

```
// Dramatis Personae

var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

var baddies = [
  "Sauron",
  "Saruman",
  "The Uruk-hai",
  "Orcs"
];
```

## 1

```
var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
}

makeMiddleEarth(lands);
```

## 2
```
function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}
```

## 3
```
function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}
```

## 4

```
function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
}
```

## 5

```
function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
}
```

## 6
```
function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
}
```

## 7

```
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
}
```

## 8

```
function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}
```

## 9

```
function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}
```

## 10
```
function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}
```

## 11
```
function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}
```

## 12
```
function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}
```

## 13
```
function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
```

### Resources

- [dom reference](https://developer.mozilla.org/en-US/docs/DOM/DOM_Reference)
- [dom cheatsheet](http://christianheilmann.com/stuff/JavaScript-DOM-Cheatsheet.pdf)
