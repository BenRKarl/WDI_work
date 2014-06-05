console.log('Do you commute to Manhattan daily?')

// PERSON MODEL - Constructor function
function Person(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

//Sets person's proto
Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this; //THIS ALLOWS FOR METHOD CHAINING ON LINE 22
}

function PeopleCollection(Person){
  this.models = {};
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
