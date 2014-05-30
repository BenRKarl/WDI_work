var myPersonArray = ['John', 'Mary', 'Ava', 'Maeve', 'Aidan'];

function People(name, age, mood){
  this.name = name,
  this.age = age,
  this.mood = mood
}	

People.prototype = {
	introduce: function () {
     if (this.mood === "happy") {
     		console.log("Hi, I'm happy");
     } else if (this.mood === "angry") {
     		console.log(this.name + "Don't talk to me right now.");
     } else {
     		console.log("My name is " + this.name + ". I am " + this.age + " years old, and I am"  + this.mood + ".");
     }
	}
}



