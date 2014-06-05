console.log('I am a robot')

// ***** model *****
function Person(id, name, email) {
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype.render = function() {
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this;
}


// ***** collection *****
function PeopleCollection() {
  this.models = {};
}

PeopleCollection.prototype.fetch = function() {
  var that = this;

  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data) {
      $(data).each(function(idx, ele) {
        var newPerson = new Person(ele.id, ele.name, ele.email);
        that.models[ele.id] = newPerson;
      })
    }
  })
}

$(function() {
  var peopleCollection = new PeopleCollection();
  peopleCollection.fetch()
})

// $(function () {
//   $.ajax({
//     url: '/people',
//     dataType: 'json',
//     success: function(data) {
//       $(data).each(function(idx, ele) {
//         var newPerson = new Person(ele.name, ele.email);
//         $('.people').append(newPerson.render().el);
//       })
//     }
//   })
// })
