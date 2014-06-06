console.log('such clean WOW!')
// **model**
function Person(personJSON){
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}

// ** View **
function PersonView(model){
  this.model = model;
  this.el = undefined;
};

PersonView.prototype.render = function(){
  var newElement = $("<div>").html(this.modelame);
  this.el = newElement;
  return this;
};

// **collection**
function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('add');     // shoot up in the air an add flare !
  return this;
}

PeopleCollection.prototype.create = function(paramObject){
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
  for (idx in peopleCollection.models){
    var person = peopleCollection.models[idx];
    var personView = new PersonView(person);
    $('.people').append(personView.render().el)
  }
}

var peopleCollection = new PeopleCollection();

$(function(){

   peopleCollection.fetch(); 

   $(peopleCollection).on('add', function(){  //listen for the add flare
    clearAndDisplayPeopleList();
   })
})
