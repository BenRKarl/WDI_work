console.log('Do you commut to Manhattan via the GWB?')

// ************ Model *************
function Person(personJSON){
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}

// ************ View *************
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this;
};

// ************ Collection *************
function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('add');     // shoot up in the air that add flare
  return this;
}


//Add person to database
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
    $('.people').append(personView.render().el)
  }
}

var peopleCollection = new PeopleCollection();

$(function(){

  peopleCollection.fetch();

  // this for that add flare
  $(peopleCollection).on('add', function(){
    console.log('')
    clearAndDisplayPeopleList();
  })

})
