console.log('I am a js: hear me be in the asset pipeline!')
// ***** model *****
function Person (id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}
Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);     
  this.el = newLi;
}

// ***** collection ******
function People(){
  this.models = {};
};
People.prototype.fetch = function(){
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
}


// original layout/arrange
// $(function(){
//   $.ajax({
//     url: '/people',
//     dataType: 'json',
//     success: function(data){
//       addPeople(data)
//     }
//   })

//   addPeople = function(data){
//     (data).each function(idx, elem){
//       // var newLi = $('<li>').html(elem.name, elem.email);
//       var newPerson = new Person(elem.name, elem.email);
//       $('#peoples').append(newPerson.render().el);
//     }
    
//     // for (var i = 0; i < data.length; i++) {
//     //   var details = data[i].name +': '+ data[i].email;
//     //   var newLi = $('<li>').html(details);
//     //   $('#peoples').append(newLi);
//     // };
//   }

// })