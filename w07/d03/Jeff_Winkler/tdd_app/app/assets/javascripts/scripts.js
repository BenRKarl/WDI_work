
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
        //console.log(this);
        //console.log(that);
        var currPerson = new Person(value.id, value.name, value.email);
        that.models[value.id] = currPerson;
        //$(ulEl).append(currPerson.render().el);
        });
      }
    });
  }
};


$(function() {

  var ulEl = $('.people')[0];

  allPeeps = new People;
  allPeeps.fetch();
  setTimeout(function(){},10000);
  what();

});

function what() {
  setTimeout(function(){
  console.log('hello');
  console.log(allPeeps.models);
  }, 100);
  for (idx in allPeeps.models) {
    console.log(idx);
  }
}
