


// var taskButton = document.getElementById("addItem");
// var userInput = document.getElementById('newTaskField');
// taskli = document.createElement('li');
// list = document.getElementById('taskList');
// taskButton.addEventListener('click', function (e){
//   alert('1. This works.')
// });

var newTask = function(userInput){
  list = document.getElementById('taskList');
  elLi = document.createElement('li');
  elLi.innerHTML = userInput.value;
  list.appendChild(elLi);
};

window.onload = function(){
  var userInput = document.getElementById('newTaskField');
  var button = document.getElementById('addItem');
  button.addEventListener('click', function(){
    newTask(userInput);
  })
}
