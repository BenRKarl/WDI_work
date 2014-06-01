var todoApp = {
  TodoItem: function(taskText) {
    this.taskText = taskText;
    this.el = undefined;  
  },

  todoList: function() {
    return document.getElementById('todo-list');
  },

  doneList: function() {
    return document.getElementById('done-list');
  },

  addTask: function(taskText) {
    var task = new this.TodoItem(taskText);
    task.render();
    this.todoList().appendChild(task.el);     
  }
};

todoApp.TodoItem.prototype.render = function() {
  var newLi = document.createElement('li');
  newLi.innerHTML = this.taskText;

  var doneButton = document.createElement('button');
  doneButton.innerHTML = 'Done';
  newLi.appendChild(doneButton);

  doneButton.addEventListener('click', function(e) {

    var liItem = e.target.parentNode;
    var todoList = liItem.parentNode;
    todoList.removeChild(liItem);

    var doneList = document.getElementById('done-list');
    var doneTask = document.createElement('li');
    var deleteTask = document.createElement('button')
    deleteTask.innerHTML = 'Delete';
    doneTask.appendChild(liItem.firstChild);
    doneTask.appendChild(deleteTask);
    doneList.appendChild(doneTask);

    deleteTask.addEventListener('click', function(e) {
      var deleteItem = e.target.parentNode;
      doneList.removeChild(deleteItem);
    });
  });

  this.el = newLi;
  return this;
};

window.onload = function() {
  todoApp.addTask('Make the most beautiful website anyone has ever seen');
  todoApp.addTask('Eat, code, sleep, repeat');    
  var addButton = document.getElementById('task-submit');
  var textInput = document.getElementById('task-input');

  addButton.addEventListener('click', function(e) {
    e.preventDefault();
    todoApp.addTask(textInput.value);
  }); 

};
