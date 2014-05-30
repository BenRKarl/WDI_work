console.log('Hi Console Viewer')

function ToDoItem(taskText){
  this.taskText = taskText;
  this.el = undefined;
}

ToDoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  liEl.innerHTML = this.taskText;
  this.el = liEl;
  return this;
}

function tasksList(){
  return document.getElementById('todo-items');
}

function createTask(taskText){
  var task = new ToDoItem(taskText);
  task.render()
  tasksList().appendChild(task.el);
};




// //this is the namespace approach to/of the whole app ** wow
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
    
    // var liEl = e.target.parentNode;
    // var olEl = liEl.parentNode;
    // olEl.removeChild(liEl);

    // colors, exciting stuff
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