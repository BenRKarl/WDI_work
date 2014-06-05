//Sloppy spiked way
// $(function(){
//   $.ajax({
//     url: '/people', //tell it we want the info from this url
//     dataType: 'json', //just incase tell it we want json
//     success: function(data){//if successful attaining the data...
//       $(data).each(function(idx, ele){ //on success append all names to li
//           var newLi = $('<li>').html(ele.name); //create an li of all element names
//           $('.people').append(newLi);//append all new Li's to people UL
//       })
//     }
//   })
// })

console.log('Do you commute to Manhattan?')


// Person Model
function Person(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined; //
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name); //create an li of all element names
  this.el = newLi;
  return this; //allow for method chaining
}

// collection of Persons
function PeopleCollection(person){
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


var peopleCollection = new PeopleCollection();

$(function(){
  console.log('DEMO:  document is ready')


  console.log('DEMO:  Before fetch: peopleCollection.models: ', peopleCollection.models)

  setTimeout(function(){
    console.log('FETCHING...')
    peopleCollection.fetch();
  }, 1000)

  setTimeout(function(){
    console.log('DEMO:  After fetch: peopleCollection.models: ', peopleCollection.models)
  }, 2000)

  setTimeout(function(){
    console.log('DEMO:  Manually update the DOM with the model\'s rendered el')

    $('.people').html('')
    for(idx in peopleCollection.models){
      var model = peopleCollection.models[idx];
      var newEle = model.render().el;
      $('.people').append(newEle);
    }

  }, 3000)


  setTimeout(function(){

    console.log('DEMO:  Manually post to "/people" with the goal of creating a new person in database')
    $.ajax({
      url: '/people',
      method: 'post',
      data: {person: {name: 'Kathew Bod'}}
    })
  }, 4000)

  setTimeout(function(){
    console.log('DEMO:  FETCHING... again');
    peopleCollection.fetch();
  }, 5000)

  setTimeout(function(){
    console.log('DEMO:  Manually update the DOM with the model\'s rendered el')
    $('.people').html('')
    for(idx in peopleCollection.models){
      var model = peopleCollection.models[idx];
      var newEle = model.render().el;
      $('.people').append(newEle);
    }
  }, 6000)

  setTimeout(function(){
    console.log('DEMO:  Smile :)')
  }, 7000)

})










