console.log("I am a js file in the asset pipeline!! YAY!");

//*****model*****
function Person(name, email){
  this.name = name;
  this.email = email;
  this.el = undefined;
};

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this;
};

//*****collection of Person objects*****
function PeopleCollection(){
  this.models = {};
};

PeopleCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      for (var i = 0; i < data.length; i++){
        var newPerson = new Person(data[i].name, data[i].email);
        that.models[i] = data[i];
      }
    }
    })
  }

var peopleCollection;

$(function(){
  peopleCollection = new PeopleCollection();
  console.log(peopleCollection.models);
  peopleCollection.fetch();
  console.log(peopleCollection.models);
  // for (var i = 0; i < peopleCollection.models.length; i++){
  //   var newElement = peopleCollection.models[i].render().el;
  //   $('.people').append(newElement);
  // }
})
