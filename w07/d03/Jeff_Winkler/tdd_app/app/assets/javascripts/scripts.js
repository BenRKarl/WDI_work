
console.log("whattup");

// *** model ***
function Person(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype = {
  render: function(){
    var newLi = $('<li>').html('Name:  ' + this.name + ',  email: ' + this.email);
    this.el = newLi;
    return this;
  }
}

// *** collection
function People() {
  this.models = {};
}

People.prototype = {
  fetch: function(){
    var that = this;
    $.ajax({
      url: '/people',
      dataType: 'json',
      success: function(data) {
      $.each(data, function(index, value) {
        var currPerson = new Person(value.id, value.name, value.email);
        that.models[value.id] = currPerson;
        });
      //displayPeeps();
      }
    });
  }
};

function displayPeeps(){
  var ulEl = $('.people');
  $.each(allPeeps.models, function(index, value) {
    $(ulEl).append(value.render().el);
  });
}

var allPeeps = new People;

$(function() {
  allPeeps.fetch();
});
