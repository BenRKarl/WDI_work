// BEFORE refactoring into constructor functions, etc
// $(function(){           // on load waits until page is finished loading to run script
//
//   $.ajax({
//     url: '/people',
//     dataType: 'json',
//     success: function(data){
//     $(data).each(function(idx, ele){
//       var newLi = $('<li>').html(ele.name);
//       $('.people').append(newLi);
//     })
//   }
//   })
// })


console.log('I am a js file in the assets pipeline');


// ***** model *****
function Person(id,name, email){
  this.id     = id;
  this.name   = name;
  this.email  = email;
  this.el     = undefined;
  return this;                  //allows method chaining for ln.40
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this;
}




// ***** collection *****
function PeopleCollection(){    //constructor function
  this.models = {};
};

PeopleCollection.prototype.fetch = function(){
   var that = this;             // see line: 52

  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){          //function(data is a callbac (function inside the ajax call, using data retrieved))
      $(data).each(function(idx,ele){ // data returned is an array of person objects
        var newPerson = new Person(ele.id, ele.name, ele.email);
        that.models[ele.id] = newPerson;              // that is directly to funcion(idx, ele)
      })
    }
  })

};


$(function(){

  var peopleCollection = new PeopleCollection();
  peopleCollection.fetch();

  for (idx in peopleCollection.models){
    var model  = PeopleCollections.models[idx];
    var newEle = model.render().el;
    $('.people').append(newEle);
  }
})
