

function Person (name) {
  var newTag = document.createElement('h1');
  newTag.innerHTML = name;
  this.el = newTag;
}


window.onload = function(e){

  var nameButton = document.getElementById("name-button");
  var nameInfo = document.getElementById("name-input");

  nameButton.addEventListener('click', function() {
    var currName = nameInfo.value;
    var newPerson = new Person(currName);
    document.body.appendChild(newPerson.el);
  });
}
