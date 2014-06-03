console.log("Console viewer.")





var todoApp = {

  ToDoItem: function(taskText){
    this.taskText = taskText;
    this.el = undefined;

  },

  taskList: function(){
    return document.getElementById('todo-items');
  },

  createTask: function(taskText){
    var task = new this.ToDoItem(taskText);
    task.render();
    this.taskList().appendChild(task.el);
  }
};

todoApp.ToDoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  var itemsEl = document.createElement('div');
  var actionsEl = document.createElement('div');
  var metaDataEl = document.createElement('span');
  var buttonEl = document.createElement('button');

  buttonEl.addEventListener('click', function(e){
    var liEl = e.target.parentNode;
    var olEl = liEl.parentNode;
    olEl.removeChild(liEl);
    
  });
  buttonEl.innerHTML = "Done."

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
