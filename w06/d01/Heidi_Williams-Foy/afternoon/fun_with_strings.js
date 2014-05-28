/* ##Part 4
###Playing with Strings
- Write a function to:
  - reverse a string
  - remove all vowels from a string
  - replace all instances of 'the' with 'the great'
  - capitalize each word in a string 
*/

var myString = 'the lessons on the js today were great';

function manString(myString) {
	var reversedString = myString.split('').reverse().join('');
	var novowelsString = myString.replace(/[aeiou]/gi, '');
	var replacedTheString = myString.replace(/the/g, 'the great');
}


/*Put each word into an array and capitize first letter of each word.*/

String.prototype.capitalize = function(){
    return this.replace( /(^|\s)(["the", "lessons", "on", "the", "js", "today", "were", "great"])/g , function(m,p1,p2){ return p1+p2.toUpperCase();
    } );
};

capitalizedString = myString.capitalize();


