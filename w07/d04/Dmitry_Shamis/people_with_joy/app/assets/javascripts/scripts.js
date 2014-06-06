// Erased all of day 2 scripts.js and created a new one.

console.log("Check, check, one two...")

// *** model ***
function Person(personJSON) {
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}

// *** view ***
function PersonView(model) {
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function() {
  var newElement = $('<div>').html(this.model.name);
  this.el = newElement;
  return this;
}

// *** collection ***
function PeopleCollection() {
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON) {
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('add');
  return this;
}

PeopleCollection.prototype.create = function(paramObject) {
  var that = this;
  $.ajax({
    url: '/people',
    method: 'post',
    dataType: 'json',
    data: {person: paramObject},
    success: function(data) {
      that.add(data);
    }
  })
}

PeopleCollection.prototype.fetch = function() {
  var that = this;

  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      for(idx in data) {
        that.add(data[idx]);
      }
    }
  })

};

function clearAndDisplayPeopleList() {
  $('.people').html('');

  for(idx in peopleCollection.models){
    var person = peopleCollection.models[idx];
    var personView = new PersonView(person);
    $('.people').append(personView.render().el)
  }
}

var peopleCollection = new PeopleCollection();


$(function() {
  peopleCollection.fetch()

  $(peopleCollection).on('add', function() {
    clearAndDisplayPeopleList();
  })

  $('.name-form').on('submit', function(e){
    e.preventDefault();
    var newName = $('.name-form input[name="name"]').val();
    peopleCollection.create({name: newName});
  })

})
