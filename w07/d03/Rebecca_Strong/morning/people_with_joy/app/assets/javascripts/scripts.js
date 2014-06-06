console.log('I am a js file the asset pipeline');



// **** model *****
function Person(id, name, email) {
  this.id = id;
  this.name;
  this.email = email;
  this.el = undefined; //only need this for rendering
}

//a Person needs to know: name, el, render

Person.prototype.render = function () {
  var newLi = $('<li>').html(this.name); //this refers to the person
  this.el = newLi; //the rendering moment when the square board rag's vision of itself becomes realised in the console - when jaja.el becomes jaja binks.
  return this;
}

//****collection/group ****//People is a constructor function for an object of persons
function People() {
this.models = {};

};

People.prototype.fetch = function() {
var that = this;

$.ajax({
    url: '/people',
    dataType: 'json', //an ajax request must include the format (json/html/xml) that is needed in order for it to be processed successfully
    success: function(data) {
      $(data).each(function(idx, ele) { //the index is where the ajax request is coming to
        var newPerson = new Person(ele.name, ele.email);
          that.models[ele.id] = newPerson;
          //where that refers back up to the scope of the prototype var that.
          //and where new Person objects are placed into their models.
        })

      }
    })


};


// $(function () {
//   //make the ajax request to obtain all the people
// $.ajax({
//   url: '/people',
//   dataType: 'json',
//   success: function (data) {

    //on success, which is a CALLBACK function, append all the people name to the ul on the welcome page's
    //each name should be in an li element


    $(data).each(function(idx, ele){
      var newPerson = new Person(ele.name, ele.email);
      $('.people').append(newPerson.render().el); //render the newPerson

      })
    }
  })

$(function(){

  var peopleCollection = new PeopleCollection();
  //make the collection and
  peopleCollection.fetch();
  //show me the models

})
