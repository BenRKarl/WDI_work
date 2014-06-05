$(function(){
   $('#form').submit(function(e){
      e.preventDefault();
      createPerson();
      $('#text-field').val(''); 
   });
});

function Person(name){
   this.name = name;
   this.el = undefined;
};

Person.prototype.render = function(){
   var listItem = $('<li>').html(this.name);
   this.el = listItem;
   return this;
};

function createPerson(){
   var textField = $('#text-field');
   var newPerson = new Person(textField.val());
   var newNode = newPerson.render().el;
   $("#list").append(newNode);
   return false;
};

