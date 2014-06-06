// Model
function Person(personJSON){
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}

// View
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newEl = $('<div>').html(this.model.name);
  this.el = newEl;
  return this;
}

// Collection
function Peeps(){
  this.models = {};
}

Peeps.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('add');
  return this;
}

Peeps.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/people',
    method: 'post',
    dataType: 'json',
    data: {person: paramObject},
    success: function(data){
      for (idx in data){
        that.add(data[idx]);
      }
    }
  })
}

Peeps.prototype.fetch = function(){
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
}

function clearNdisplay(){
  $('.people').html('');
  for (idx in newPeeps.models){
    var person = newPeeps.models[idx];
    var personView = new PersonView(person);
    $('.people').append(personView.render().el)
  }
}

var newPeeps = new Peeps();

$(function(){
  newPeeps.fetch();
  $(newPeeps).on('add', function(){
    clearNdisplay();
  })

})
