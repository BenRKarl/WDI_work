var toDoApp = {
  ToDoItem: function (taskText) {
    this.taskText = taskText;
    this.el = undefined;
  },

  tasksList: function () {
    return document.querySelector('.task-list');
  },

  createTask: function (taskText) {
    var task = new this.ToDoItem(taskText);
    task.render();
    this.tasksList().appendChild(task.el);
  }
};

toDoApp.ToDoItem.prototype.render = function () {
  var liEl = document.createElement('li');
  var itemsEl = document.createElement('div');
  var taskEl = document.createElement('span');
  var buttonEl = document.createElement('button');
  buttonEl.innerHTML = "Completed";

  buttonEl.addEventListener('click', function (e){
    e.target.previousElementSibling.style.textDecoration = "line-through";
    var completedEl = document.createElement('span');
    completedEl.innerHTML = " Completed: " + new Date().toLocaleDateString();
    itemsEl.appendChild(completedEl);
  })

  var addedEl = document.createElement('span');
  addedEl.innerHTML = " Added: " + new Date().toLocaleDateString();
  taskEl.innerHTML = this.taskText + " ";
  itemsEl.appendChild(taskEl);
  itemsEl.appendChild(buttonEl);
  itemsEl.appendChild(addedEl);
  liEl.appendChild(itemsEl)
  this.el = liEl
  return this;
}

window.onload = function () {
  var taskButton = document.querySelector('.add-task-button');
  var userInput = document.querySelector('.task');
  taskButton.addEventListener('click', function () {
    toDoApp.createTask(userInput.value);
  })
}
