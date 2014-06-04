// before refactor
// $(function(){
//   $.ajax({url: '/people',
//     dataType: 'json',
//    success: function(data){
//     // why does data get assigned the value of the success callback?
//      $(data).each(function(idx, ele){
//       var newLi = $('<li>').html(ele.name);
//       $('.people').append(newLi);
//      })
//   }});
// });

//*****model*****
function Person(id, name, email){
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this;
}

//*****collection*****
function PeopleCollection(){
  this.models = {};
}

People.prototype.fetch = function(){
  var that = this;
  // can you do Person.this?
  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newPerson = new Person(ele.id, ele.name, ele.email);
        that.models[ele.id] = newPerson;
      })
    }
  });
};

// $(function(){
//   var peopleCollection = new PeopleCollection();
//   peopleCollection.fetch();
//   console.log('Before fetch', peopleCollection.models)
//   setTimeout(function(){
//   }, 1000)




// })
