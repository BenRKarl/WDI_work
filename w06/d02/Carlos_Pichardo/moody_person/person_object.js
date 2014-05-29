function Person(name, age, mood){
	this.name = name;
	this.age = age;
	this.mood = mood;

}

var Person = {
	introduce: function(){
		if (this.mood == 'happy'){
			console.log("Hi! I'm this.name! Please to meet you");
		else {
			console.log("hi...this.name here...");
		}
		}
	}
}

var carlosP = new Person('Carlos', 21, 'happy')