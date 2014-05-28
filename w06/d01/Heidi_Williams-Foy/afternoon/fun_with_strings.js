/* ##Part 4
###Playing with Strings
- Write a function to:
  - reverse a string
  - remove all vowels from a string
  - replace all instances of 'the' with 'the great'
  - capitalize each word in a string 

  The charAt() method returns the specified character from a string.*/

// var reverse = function(str) {
//     var arr = [];

//     for (var i = 0, len = str.length; i <= len; i++) {
//         arr.push(str.charAt(len - i))
//     }

//     return arr.join('');
// }

// function removeVowels(str) {
//   return str.replace(/[aeiou]/,''),
// }

// reverse('the string is backwards');



// function replace(str) {
//   return str.replace(/[aeiou]/,''),
// }

var myString = 'the lessons on the js today were great';

function manString(myString) {
	var reversedString = myString.split('').reverse().join('');
	var novowelsString = myString.replace(/[aeiou]/gi, '');
	var replacedTheString = myString.replace(/the/g, 'the great');
}


String.prototype.capitalize = function(){
    return this.replace( /(^|\s)(["the", "lessons", "on", "the", "js", "today", "were", "great"])/g , function(m,p1,p2){ return p1+p2.toUpperCase();
    } );
};

capitalizedString = myString.capitalize();



/*Put each word into an array and capitize each letter.