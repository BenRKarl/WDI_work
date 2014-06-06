
console.log("whattup");

// **** Model ****

function Person(personJSON) {
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}

// **** View ****
function PersonView(model) {
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this;
}

// **** Collection ****

function PeopleCollection() {
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON) {
  var newPerson = new Person(personJSON);
  this.models[newPerson.id] = newPerson;
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
    success: function(data){
      that.add(data);
    }
  });
}

PeopleCollection.prototype.fetch = function() {
  var that = this;
  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      for (index in data) {
        that.add(data[index]);
      }
    }
  });
}

function clearAndDisplayPeopleList() {
  $('.people').html('');
  for (index in peopleCollection.models) {
    var person = peopleCollection.models[index];
    var personView = new PersonView(person);
    $('.people').append(personView.render().el);
  }
}



var peopleCollection = new PeopleCollection;

$(function(){
  peopleCollection.fetch();
  $(peopleCollection).on('add', function(){
    clearAndDisplayPeopleList();
  });
});
