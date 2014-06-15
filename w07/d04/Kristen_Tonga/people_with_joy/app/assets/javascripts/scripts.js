console.log('Breath...')

//**** Model ****
function Person(personJSON){
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}

//**** Views
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<div>').html(this.model.name);
  this.el = newElement;
  return this;
};


//**** Collection
function PeopleCollection(){
  this.models = {};
}

function clearAndDisplayPeopleList(){
      $('.people').html('')

      for(idx in peopleCollection.models){
        var person = peopleCollection.models[idx];
        var personView = new PersonView(person);
        $('.people').append(personView.render().el)
      }
}

PeopleCollection.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/people',
    method: 'post',
    dataType: 'JSON',
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
      console.log(data)
      for (idx in data){
        var element = data[idx];
        var newPerson = new Person(element);
        console.log(newPerson)
        that.models[element.id] = newPerson;
      }
    }
  })
};


var peopleCollection = new PeopleCollection();

$(function(){
  peopleCollection.fetch()

  peopleCollection.on('modelAdded', function(){
    clearAndDisplayPeopleList();
  })

  }, 1000)
})
