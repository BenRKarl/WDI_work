console.log('I am a js file in the asset pipeline')


function Person(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this
}

function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newPerson = new Person(ele.name, ele.email)
        that.models[ele.id] = newPerson;
      })
    }
  })
};



var peopleCollection;
$(function(){

  peopleCollection = new PeopleCollection();

  peopleCollection.fetch()
  for (var idx in peopleCollection.models) {
    $('.people').append(peopleCollection.models[idx].render().el)
  }


})
