console.log("I am a js file in the assets");

//************ model ************
function Person(name, email){
  this.name = name;
  this.email =email;
  this.el = undefined;
};

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this;
};

//***************** collection *******
function People() {
  this.models = {};
};

People.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/people',
    datatype: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newPerson = new Person(ele.name, ele.email);
        that.models[ele.id] = newPerson;
      })
    }
  })
};

// $(function () {
//   $.ajax({
//     url: '/people', 
//     datatype: 'json',
//     success: function(data){
//     $(data).each(function(idx, ele){
//       var newPerson = new Person(ele.name, ele.email);
//       $('.people').append(newPerson.render().el);
//     })
//     }
//   })
// })
