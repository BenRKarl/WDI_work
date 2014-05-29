var Person = function(name, age, mood){
  this.name = name;
  this.age  = age;
  this.mood = mood;
}


Person.prototype = {
  introduce: function(){
    if (this.mood === 'happy') {
      console.log("Hi, my name is " + this.name + " and I am " + this.age + " years young.  Pleased to meet ya");
    }
    else if (this.mood === 'unhappy') {
      console.log("Oh, hey... I'm " + this.name + " and I'm " + this.age + " years old.  ::sulk::");
    }
    else if (this.mood === 'indifferent') {
      console.log("I'm " + this.name + ", I'm " + this.age + " years old.");
    }
  }
};



var Arya = new Person('Arya', 0, 'happy');
var Bob  = new Person('Bob', 86, 'indifferent');
var Cat  = new Person('Cat', 17, 'happy');
var Mark = new Person('Mark', 28,' unhappy');
var Mary = new Person('Mary', 28, 'indifferent');

personArray = [Arya, Bob, Cat, Mark, Mary]
