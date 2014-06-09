
console.log('Great work. Here we go.')



//** Model **//
function Person(personJSON){
 this.name = personJSON.name;
 this.email = personJSON.email;
 this.id = personJSON.id;
}

//** View **//
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this;
}

// *** Collection ***//
function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('add');
  return this;
}

PeopleCollection.prototype.create = function(paramObject){

  $.ajax({
    url: '/people',
    method: 'post',
    data 
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

var peopleCollection = new PeopleCollection();


$(function(){

  peopleCollection.fetch()

  setTimeout(function(){

    peopleCollection.on('modelAdded', function(){
      clearAndDisplayPeopleList();
    })

})




