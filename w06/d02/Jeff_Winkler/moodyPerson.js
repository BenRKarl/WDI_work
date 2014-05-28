
function Person(name, age, mood) {
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {
  introduce: function() {
    console.log('Hello, I am ' + this.name + ' and I am ' + this.age + ' years old.  I feel ' + this.mood + '.')
  }
}

var lich = new Person('Lichard', 3, 'great');
var bod = new Person('Bod', 4, 'awesome');
var kath = new Person('Kath', 5, 'fantastic');
var gim = new Person('Gim', 6, 'amazing');
var gem = new Person('Gem', 7, 'wonderful');

lich.introduce();
bod.introduce();
kath.introduce();
gim.introduce();
gem.introduce();

var people = [];
people.push(lich);
people.push(bod);
people.push(kath);
people.push(gim);
people.push(gem);

console.log(people);

