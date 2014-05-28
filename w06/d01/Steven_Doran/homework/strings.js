function reverseString(string){
 return string.split('').reverse().join('');   
}

var soup = reverseString('We are having soup fo dinner! Get excited!!')

console.log('We are having soup fo dinner! Get excited!! becomes:')
console.log(soup)


function removeVowels(string){
    return string.replace(/[aeiou]/g,'');
}

var avalanche = removeVowels("Hello there avalanche");

console.log("Hello there avalanche becomes:");
console.log(avalanche);

function greatness(string){
    return string.replace(/the/g, 'the great');
}

var children = greatness("the soup is too hot for the children")

console.log("the soup is too hot for the children becomes:");
console.log(children);