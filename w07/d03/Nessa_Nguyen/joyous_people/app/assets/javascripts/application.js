//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function Person(name, email) {
  //this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype.render = function(){
  var newLi = $('<li>').append(this.name+': '+this.email);
  this.el = newLi;
  return this;
}


function People(){
  this.models = {};
}

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

$(function(){
  var peopleCollection = new People();
  peopleCollection.fetch();  
  for (idx in peopleCollection.models){
    var person = peopleCollection.models[idx];
    $('.people').append(person.render().el);
  }

  
//  $.ajax({url: '/people', 
//          dataType: 'json', 
//          success: function(data){ showPeople(data); }
//        });//

//function showPeople(data){
//  for (var i = 0; i < data.length; i++){
//    person = new Person(data[i].name, data[i].email); 
//    $('.people').append(person.render().el);
//  }
//}
}) // close on load
