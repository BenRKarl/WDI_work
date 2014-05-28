function Person(name, age, mood) {
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {
  introduce: function (mood) {

    switch (mood){
      case 5:
        console.log('Wow-ey! So glad you asked! Im ' + this.name + '... Whats youre name wonderful?');
        break;
      case 4:
        console.log('');
        break;
      case 3:
        console.log('');
        break;
      case 2:
        console.log('');
        break;
      case 1:
        console.log('');
        break;

    }
  }
}
