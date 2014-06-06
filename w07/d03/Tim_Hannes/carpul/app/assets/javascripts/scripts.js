console.log('Do you commute to Manhattan daily?')

// PERSON MODEL - Constructor function
function Person(personJSON){
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}

// VIEW
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

//Sets person's proto
Person.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this; //THIS ALLOWS FOR METHOD CHAINING ON LINE 22
}

function PeopleCollection(Person){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('add');
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
      that.add(data)
    }
  })
}

PeopleCollection.prototype.fetch = function(){
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

var PeopleCollection = new PeopleCollection();
