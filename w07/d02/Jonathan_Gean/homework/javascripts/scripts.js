function User(name){
  this.name = name;
  this.el = undefined;
}

User.prototype.render = function(){
  var liEl = document.createElement('li');
  liEl.innerHTML = this.name;
  this.el = liEl;
  return this;
}

function UsersList(){
  return document.getElementById('users');
}


window.onload = function(){
  var userInput = document.getElementById('new-user-field');
  var button = document.getElementById('add-user');
  button.addEventListener('click', function(){
    UsersList().appendChild(new User(userInput.value).render().el);
  })
}
