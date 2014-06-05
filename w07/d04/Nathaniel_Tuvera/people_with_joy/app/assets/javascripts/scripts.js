//refer to w07/d03/Nathaniel_tuvera/people_with_joy for other versions of this scripts.js

console.log('re-do on people_with_joy scripts.js')


// **** Model ****
function Person(personJSON){
  this.name = personJSON.name;
  this.email= personJSON.email;
  this.id   = personJSON.id;
}


// **** View ****
function PersonView(model){
  this.model  = model;
  this.el     = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);;
  this.el = newElement;
  return this;
};


// **** Collection ****
function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('addFlare');
  return this;
}


PeopleCollection.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/people',
    method: 'post',
    dataType: 'json',
    data: {person: paramObject},
    success: function(data){
      that.add(data);
    }
  })
}


PeopleCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      for (idx in data){
          that.add(data[idx]);
      }
    }
  })
};




function clearAndDisplayPeopleList(){

  $('.people').html('');

  for(idx in peopleCollection.models){
    var person = peopleCollection.models[idx];
    var personView = new PersonView(person);
    $('.people').append(personView.render().el) //heypainter.go paint.give me a painting
    }
}

var peopleCollection = new PeopleCollection();

$(function(){

  peopleCollection.fetch();

  $(peopleCollection).on('addFlare', function(){
    clearAndDisplayPeopleList();
  })

})
