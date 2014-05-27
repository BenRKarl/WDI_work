function reverseString(string){
 return string.split('').reverse().join('');   
}

soup = reverseString('We are having soup fo dinner! Get excited!!')

console.log(soup)