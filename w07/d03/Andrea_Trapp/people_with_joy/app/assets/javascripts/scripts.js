console.log("I am a js file in the asset pipeline");

// ********   model   *********
function Person(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name).addClass('person');
  this.el = newLi;
  return this;
}


// ********   collection   *********

// People is a constructor function for an object that manages a collection ( a bunch of persons )
function People(){
  this.models = {};
};

People.prototype.fetch = function() {
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

// now as we have the person constructor and prototype, as well as the people constructor and prototype
$(function(){
  var peopleCollection = new People();

  console.log('Before fetch', peopleCollection.models);

  setTimeout(function(){
    peopleCollection.fetch();
  }, 1000);

  setTimeout(function(){
    console.log('After fetch', peopleCollection.models);
  }, 1000);

  setTimeout(function(){
    console.log('After after fetch', peopleCollection.models);

    for(idx in peopleCollection.models){
      var person = peopleCollection.models[idx];
      var personEl = person.render().el;
      $('.people').append(personEl);
    }

  }, 3000);

  setTimeout(function(){
    $.ajax({
      url: '/people',
      method: 'post',
      data: {person: {name: 'Kathew Bod'}}
    })
  }, 4000);

  setTimeout(function(){
    peopleCollection.fetch();
  }, 5000);

  setTimeout(function(){
    $('.people').html('');

    for(idx in peopleCollection.models){
      var person = peopleCollection.models[idx];
      var personEl = person.render().el;
      $('.people').append(personEl);
    }
    
  });


})

// $(function(){
//   $.ajax({
//     url: '/people',
//     success: function(data){
//       console.log(data);
//       // do stuff with data, which is an array !!!!!!!!!!

//       // before refactoring with Constructor and Prototype
//       // $(data).each(function(idx, ele){
//       //   console.log(ele.name);
//       //   var personLi = $('<li>').html(ele.name).addClass('person');
//       //   $('.people').append(personLi);
//       // })

//       // after refactoring with Constructor and Prototype
//       //   $(data).each(function(idx, ele){
//       //   console.log(ele.name);
//       //   var newPerson = new Person(ele.name, ele.email);;
//       //   $('.people').append(newPerson.render().el);
//       // })

//       // before refactoring with Constructor and Prototype - my original Version 
//       // var peopleArray = data;
//       // for (var i = 0; i < peopleArray.length; i++){
//       //   var personLi = $('<li>').html(peopleArray[i].name).addClass('person');
//       //   $('.people').append(personLi);
//       // }
      
//       // after refactoring with Constructor and Prototype - my original Version 
//         var peopleArray = data;
//         for (var i = 0; i < peopleArray.length; i++){       
//           var newPerson = new Person(peopleArray[i].name, peopleArray[i].email);
//           var personLi = newPerson.render();
//           $('.people').append(personLi.el);
//         }

//     },
//     //success: callback,  
//     dataType: 'json'
//   })
// })

