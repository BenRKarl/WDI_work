function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
};

Person.prototype = {
  introduce: function(){
    if ( this.mood > 8) {
      var myMood = " Fantastically well!";
    }else if ( 8 > this.mood > 4){
      var myMood = " Pretty fine";
    }else if ( this.mood < 4){
      var myMood = " not so good";
    }else{
      var myMood = "...I just don't know";
    }
    console.log("Hi there, I'm " + this.name + " and I feel" + myMood)
  }

}
var bob = new Person('Robert', 18, 7);