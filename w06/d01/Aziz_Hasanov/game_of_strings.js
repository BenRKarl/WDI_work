var string = "the whatever"

var reverse = string.split("").reverse().join("")
console.log(reverse)

var remove = string.replace(/[aeiou]/ig,'')
console.log(remove)

var replace = string.replace("the", "the great")
console.log(replace)


String.prototype.capitalize = function() {
  return this.replace(/(?:^|\s)\S/g, function(a) { return a.toUpperCase(); });
};
string.capitalize()
//console.log(cap)