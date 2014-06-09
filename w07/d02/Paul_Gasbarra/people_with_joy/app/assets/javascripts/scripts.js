console.log('Great work.  Here we go.')


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
  var newElement = $('<div>').html(this.model.name);
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
  return this;
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



var peopleCollection = new PeopleCollection();


$(function(){

  peopleCollection.fetch();

  setTimeout(function(){

      $('.people').html('');

      for(idx in peopleCollection.models){
        var person = peopleCollection.models[idx];
         var personView = new PersonView(person);
        $('.people').append(personView.render().el)
      }

  }, 1000)

})
