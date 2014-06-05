console.log('i am a js file in the asset pipiplein')

function Person(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this
}

$(function(){

 $.ajax({url: '/people',
        dataType: 'json',
        success: function(data){
          console.log(data)
          $(data).each(function(index, personObject){
                var newPerson = new Person(personObject.name, personObject.email);
                $('.people').append(newPerson.render().el);
              })
        }
  })

})


//*****colllection ***

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
//Before refactoring in to constructor functions
// $(function(){

//  $.ajax({url: '/people',
//         dataType: 'json',
//         success: function(data){
//           console.log(data)
//           $(data).each(function(index, personObject){
//                 var newLi = $('<li>').html(personObject.name);
//                 $('.people').append(newLi);
//               })
//         }
//   })

// })
