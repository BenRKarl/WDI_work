var string = "The little birdies tweet so sweetly"

// TO REVERSE A STRING
var letters = string.split('')
var reverse = letters.reverse().join().replace(/,/g, "")


// TO REMOVE ALL VOWELS FROM A STRING
var vowels = string.replace(/a/gi, "").replace(/e/gi, "").replace(/i/gi, "").replace(/o/gi, "").replace(/u/gi, "");


// TO REPLACE ALL INSTANCES OF 'THE' WITH 'THE GREAT'
var replace = string.toLowerCase().replace('the', 'the great');
var firstLetter = replace.charAt(0).toUpperCase();
var without = replace.slice(1);
var theGreat = firstLetter + without;
// can also use => var theGreat = firstLetter.concat(without);


// TO CAPITALIZE EACH WORD IN A STRING
var caps = string.toUpperCase();



// SHOW!!!
console.log( reverse )
console.log( vowels )
console.log( caps )
console.log( theGreat )

