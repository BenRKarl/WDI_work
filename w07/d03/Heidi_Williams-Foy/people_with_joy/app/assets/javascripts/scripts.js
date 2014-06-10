console.log('I am a js file the asset pipeline')

$(function Person(name, email)
	this.id = id;
	this.name;
	this.email = email;
	this.el = undefined;
}

Person.prototype.render = function() {
	var newLi = $('<li>').html(this.name);
	this.el = newLi;
	return this;
}

//***collection/group***/
$(function(){

	$.ajax({
		url: '/people',
		dataType: 'json',
		success: function(data){

			$(data).each(function(idx, ele){
				var newPerson = new Person(ele.name, ele.email);
				$('.people').append(newPerson.render().el);
			})
		}
	})
//*** model ***//
function Person(id, name, email)
	this.name = name;
	this.email = email;
	this.el = undefined;
}

Person.prototype.render = function(){
	var newLi = $('<li>').html(this.name);
	this.el = newLi;
}

//***collection**//
function People(){
	this.models = {};
};

People.prototype.fetch = function(){
var that = this;

  $.ajax({
  	url: '/people',
  	dataType: 'json',
  	success: function(data){
  		$(data).each(function(idx, ele){
  			var newPerson = new Person(ele.id, ele.name, ele.email);
  			that.models[ele.id] = newPerson;
  		})
  	}
  })
};

$(function(){

	var peopleCollection = new PeopleCollection();

	console.log('Before featch', peopleCollection.models)

	setTimeout(function(){
	peopleCollection.fetch();
}, 1000

setTimeout(function(){
	console.log('After fetch', peopleCollection.models)
}, 2000

setTimeout(function(){
	for(person in peopleCollection.models){
		$('.people').append(person.render)
	}
}, 3000

//in a document ready, ake them as ajax people and append 
//them to ul on that page
