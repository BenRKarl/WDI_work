console.log('its all wired up');

// ***** Model *****
function Person(personJSON){
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}


// ***** Collection *****
function PeopleCollection(){
  this.models = {};
}


// ***** View *****
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<div>').html(this.model.name);
  this.el = newElement;
  return this;
}

// ***** Collection prototype *****
PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('add');
  return this;
}

PeopleCollection.prototype.create = function(){
  var that = this;
  $.ajax({
    url: '/people',
    method: 'post',
    dataType: 'json',
    data: {person: paramObject},
    success: function(){
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
      for (var i = 0; i < data.length; i++){
        that.add(data[i]);
      }
    }
  })
}

function clearAndDisplayPeopleList(){

  $('.people').html('');

  for (i in coll.models){
    var person = coll.models[i];
    var personView = new PersonView(person);
    $('.people').append(personView.render().el);
  }

}

var coll = new PeopleCollection();

$(function(){
  coll.fetch();
  $(coll).on('add', function(){
    clearAndDisplayPeopleList();
  })
})
