console.log("hello, world")


// *** MODEL *** //

function Person(personJSON) {
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}


// *** VIEW *** //

function PersonView(model) {
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function() {
  var newElem = $("<div>").html(this.model.name);
  this.elem = newElem;
  return this;
}


// *** COLLECTION *** //

// manages bunch of models
function PeopleCollection() {
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON) {
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger("add");
  return this;
}


PeopleCollection.prototype.create = function(paramObject) {
  var that = this;
  $.ajax({
    url: "/people",
    method: "post",
    dataType: "json",
    data: {person: paramObject},
    success: function(data) {
      that.add(data);
    }
  })
}


PeopleCollection.prototype.fetch = function() {
  var that = this;

  $.ajax({
    url: "/people",
    // retrieves json of all people in DB as "data"
    dataType: "json",
    success: function(data) {
      // "index" is same as "i"
      for (index in data) {
        that.add(data[index]);
        // var elem = data[index];
        // var newPerson = new Person(elem);
        // that.models[elem.id] = newPerson;
      }
    }
  })
}

function clearAndDisplayPeople() {
  $(".people").html("");

  for(idx in peopleCollection.models) {
    var person = peopleCollection.models[idx];
     var personView = new PersonView(person);
    $('.people').append(personView.render().el)
  }
}

var peopleCollection = new PeopleCollection();
// peopleCollection.fetch();
// peopleCollection.models;

$(function() {
  peopleCollection.fetch();

  $(peopleCollection).on("add", function() {
    clearAndDisplayPeople();
  })
  $('.name-form').on('submit', function(e){
    e.preventDefault();
    var newName = $('.name-form input[name="name"]').val();
    peopleCollection.create({name: newName});
  })

})

