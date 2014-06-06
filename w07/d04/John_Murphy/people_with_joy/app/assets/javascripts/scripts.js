// console.log('I am a js file in the asset pipeline')


// function Person(id, name, email){
//   this.id = id;
//   this.name = name;
//   this.email = email;
//   this.el = undefined;
// }

// Person.prototype.render = function(){
//   var newLi = $('<li>').html(this.name);
//   this.el = newLi;
//   return this
// }

// function PeopleCollection(){
//   this.models = {};
// }

// PeopleCollection.prototype.fetch = function(){
//   var that = this;
//   $.ajax({
//     url: '/people',
//     dataType: 'json',
//     success: function(data){
//       $(data).each(function(idx, ele){
//         var newPerson = new Person(ele.name, ele.email)
//         that.models[ele.id] = newPerson;
//       })
//     }
//   })
// };



// var peopleCollection;
// $(function(){

//   peopleCollection = new PeopleCollection();

//   peopleCollection.fetch()
//   for (var idx in peopleCollection.models) {
//     $('.people').append(peopleCollection.models[idx].render().el)
//   }


// })

console.log("Great work")

// **** Model ****
function Person(personJson){
  this.name = personJson.name;
  this.email = personJson.email;
  this.id = personJson.id;
}

// **** View ****

function PersonView(model) {
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<div>').html(this.model.name);
  this.el = newElement;
  return this
}

// **** Collection ****

function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJson){
  var newPerson = new Person(personJson);
  this.models[personJson.id] = newPerson;
  $(this).trigger('add');                    //shoot add flare
  return this
}

PeopleCollection.prototype.create = function(paramObject){
  var that = this
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
        that.add(data[idx])
      }
      console.log(data)
    }
  })
};

function clearAndDisplayPeopleList(){

    $('.people').html('')

    for(idx in peopleCollection.models){
      var person = peopleCollection.models[idx]
      var personView = new PersonView(person);
      $('.people').append(personView.render().el)
    }
}

var peopleCollection = new PeopleCollection()

$(function(){

  peopleCollection.fetch()

  $(peopleCollection).on('add', function(){     //look for add flare
    clearAndDisplayPeopleList();
  })

})
