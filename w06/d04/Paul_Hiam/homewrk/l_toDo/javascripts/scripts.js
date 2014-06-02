// make obj lit to house todo functions
var todoApp = {
  ToDoItem: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },
  tasksList: function(){
    return document.getElementById('todo-items');
  },
  createTask: function(taskText){
    var task = new this.ToDoItem(taskText);
    task.render();
    this.tasksList().appendChild(task.el);
  }
};

todoApp.ToDoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  var buttonEl = document.createElement('button');

  buttonEl.addEventListener('click', function(e){
    
   //color etc...
   var liEl = e.target.parentNode;
   var olEl = liEl.parentNode;
   liEl.style.backgroundColor = "lightgreen";
   setTimeout (function(){
    olEl.removeChild(liEl);
  }, 500);
 });
  
  buttonEl.innerHTML = 'Done';

  liEl.innerHTML = this.taskText;
  liEl.appendChild(buttonEl);

  this.el = liEl;
  return this;
};


window.onload = function(){
  var taskButton = document.getElementById('add-item');
  var userInput = document.getElementById('new-task-field');
  taskButton.addEventListener('click', function(){
    todoApp.createTask(userInput.value);
  });
};