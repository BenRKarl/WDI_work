$(function(){
  $('#form').on('submit', function(e){ 
    e.preventDefault();
    var person = new Person;
    person.name = $('#input').val();
    person.render();
    $('#input').text(''); 
  });
})

function Person(){
  this.name = name; 
  this.el = undefined;
}

Person.prototype.render = function(){
  var name = this.name;
  this.el = $('<h3>').html(' has been created!');
  $('.person').html(this.el);
  this.el.prepend(name.toUpperCase());  
  return this;
};
