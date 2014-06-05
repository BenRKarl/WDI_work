$(function(){
  $('.input-form').on('submit', displayName);
})

function UserName(name){
  this.name = name;
  this.element = undefined;
}

UserName.prototype.render = function(){
  var emptyP = $('<p>');
  emptyP.html(this.name);
  this.element = emptyP;
  return this;
}

function displayName(){
  var inputText = $('.input-field').val();
  var userNameObject = new UserName(inputText);
  $('.user-name').html('');
  $('.user-name').append(userNameObject.render().element);
  return false;
}
