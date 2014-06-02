// gameplay
//   set up game
//   select word
//   take a guess
//   compare guess
//   if good place in word
//     if bad ad a body part
//       Head torso arm arm leg leg
//     game over



// selectWord = function(){
//   randomNum = Math.floor(Math.random() * words.length) + 1
//   return words[randomNum]
// }

// guessCheck = function(guess)



// window.onload function() {
//   selectWord();
//   var guess = document.getElementById('guess').innerHTML;
//   var guessSubmit = getElementById('guessSubmit');
//   guessSubmit.addEventListener('click', function(){guessCheck(guess)});
// }

bodyArr = ['head', 'torso', 'arm', 'arm', 'leg', 'leg'];

words = ['apple', 'orange', 'peach', 'pear'];

randomNum = Math.floor(Math.random() * words.length) + 1;

var randomWord = words[randomNum];

console.log(randomWord.split(''));

var guess = "";
var guesses = 0;
var man = []

console.log("Welcome to hangman. The word is " + randomWord.length + " letters long.");

while (guesses < bodyArr.length || playerWord != randomWord){
   var guess = prompt("Guess a letter.");
   console.log(guess);
   var word = randomWord.split('');
   if (guess in word) {
    console.log(guess + " is in the word at " + word.indexOf(guess) + ".")
   } else {
    console.log("Sorry, bad guess");
    guesses = guesses + 1;
    man.push(bodyArr[guesses-1]);
    console.log(man);
   }

 }
