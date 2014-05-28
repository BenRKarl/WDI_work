var s = 'Danny, The Champion of The World';

function reverse(s) {
  return s.split('').reverse().join('');
};

function replace(s) {
  return s.replace(/[aeiou]/ig, '');

};

function theGreat(s) {
  return s.gsub('the', 'the great');
};

function shout(s) {
  return s.upcase();
};


// // reverse a string
// .reverse (do I want also to .split ('') to mk array? .join ('') to elide?)
// // remove all vowels from a string
// .replace (.replace(/[aeiou]/ig,''))
// // replace all instances of 'the' with 'the great'
// .gsub('the', 'the greatest ')
// // capitalize each word in a string
// .upcase
