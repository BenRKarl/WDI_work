function Person(name, age, mood) {
  this.name = name;
  this.age  = age;
  this.mood = mood;
  this.introduce = function() {
    switch(this.mood) {
      case 'grumpy':
        console.log('Name is ' + this.name + '. What??');
        break;
    
      case 'normal':
        console.log('My name is ' + this.name);
        break;

      case 'happy':
        console.log('I am ' + this.name + '. Very nice to meet you');
    }
  }      
}

var cindy  = new Person('Cindy', 38, 'normal');
var jeremy = new Person('Jeremy', 29, 'happy');
var alexandra = new Person('Alexandra', 16, 'normal');
var francis = new Person('Francis', 55, 'grumpy');
var buck = new Person('Bucks', 33, 'happy');

alexandra.introduce();
francis.introduce();
buck.introduce();




