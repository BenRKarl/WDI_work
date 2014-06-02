var todoApp = {
  TodoItem: function(taskText) {
    this.taskText = taskText;
    this.el = undefined;
  },
  
  taskList: function() {
    return document.getElementById('todo-list');
  },

  createTask: function(taskText) {
    var task = new this.TodoItem(taskText);
    task.render();
    this.taskList().appendChild(task.el);
  }
};

todoApp.TodoItem.prototype.render = function() {
  var liEl = document.createElement('li');
  var buttonEl = document.createElement('button');

  buttonEl.addEventListener('click', function(e) {
    var liEl = e.target.parentNode;
    var olEl = liEl.parentNode;
    liEl.style.fontStyle = 'italic';
    liEl.style.textDecoration = 'line-through';
//    setTimeout(function() {
//      olEl.removeChild(liEl);       
//    }, 500);
  });

  buttonEl.innerHTML = 'Done';
  liEl.innerHTML = this.taskText;
  liEl.appendChild(buttonEl);

  this.el = liEl;
  return this;
};

window.onload = function() {
  var taskButton = document.getElementById('add-task');
  var userInput  = document.getElementById('new-task');

  taskButton.addEventListener('click', function() {
    todoApp.createTask(userInput.value);
  });

};
