

console.log('Great work.  Here we go.')


// ************ Model *************
function Person(personJSON){
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}


// ************ View *************
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<div>').html(this.model.name);
  this.el = newElement;
  return this;
};


// ************ Collection *************
function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  return this;
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

  peopleCollection.fetch();

  setTimeout(function(){

      $('.people').html('');

      for(idx in peopleCollection.models){
        var person = peopleCollection.models[idx];
         var personView = new PersonView(person);
        $('.people').append(personView.render().el)
      }

  }, 1000)

})
















// BEFORE refactoring into constructor functions etc
// $(function(){

//   // Make the ajax request to obtain all the people
//   $.ajax({
//     url: '/people',
//     dataType: 'json',
//     success: function(data){
//         // On success, append all the people names to the ul on the welcome's index
//         //  Each name should be in an li element
//         $(data).each(function(idx, ele){
//           var newLi = $('<li>').html(ele.name);
//           $('.people').append(newLi);
//         })
//     }
//   })

// })














// console.log('DEMO:  This is a message from a js file the asset pipeline')


// // ***** Model *****
// function Person(id, name, email){
//   this.id = id;
//   this.name = name;
//   this.email = email;
//   this.el = undefined;
// }

// Person.prototype.render = function(){
//   var newLi = $('<li>').html(this.name);
//   this.el = newLi;
//   return this;
// };




// // ***** Collection *****
// function PeopleCollection(){
//   this.models = {};
// };

// PeopleCollection.prototype.fetch = function(){
//   var that = this;

//   $.ajax({
//     url: '/people',
//     dataType: 'json',
//     success: function(data){
//       $(data).each(function(idx, ele){
//         var newPerson = new Person(ele.id, ele.name, ele.email);
//         that.models[ele.id] = newPerson;
//       })
//     }
//   })

// };





// //
// var peopleCollection = new PeopleCollection();

// $(function(){
//   console.log('DEMO:  document is ready')


//   console.log('DEMO:  Before fetch: peopleCollection.models: ', peopleCollection.models)

//   setTimeout(function(){
//     console.log('FETCHING...')
//     peopleCollection.fetch();
//   }, 1000)

//   setTimeout(function(){
//     console.log('DEMO:  After fetch: peopleCollection.models: ', peopleCollection.models)
//   }, 2000)

//   setTimeout(function(){
//     console.log('DEMO:  Manually update the DOM with the model\'s rendered el')

//     $('.people').html('')
//     for(idx in peopleCollection.models){
//       var model = peopleCollection.models[idx];
//       var newEle = model.render().el;
//       $('.people').append(newEle);
//     }

//   }, 3000)


//   setTimeout(function(){

//     console.log('DEMO:  Manually post to "/people" with the goal of creating a new person in database')
//     $.ajax({
//       url: '/people',
//       method: 'post',
//       data: {person: {name: 'Kathew Bod'}}
//     })
//   }, 4000)

//   setTimeout(function(){
//     console.log('DEMO:  FETCHING... again');
//     peopleCollection.fetch();
//   }, 5000)

//   setTimeout(function(){
//     console.log('DEMO:  Manually update the DOM with the model\'s rendered el')
//     $('.people').html('')
//     for(idx in peopleCollection.models){
//       var model = peopleCollection.models[idx];
//       var newEle = model.render().el;
//       $('.people').append(newEle);
//     }
//   }, 6000)

//   setTimeout(function(){
//     console.log('DEMO:  Smile :)')
//   }, 7000)

// })
