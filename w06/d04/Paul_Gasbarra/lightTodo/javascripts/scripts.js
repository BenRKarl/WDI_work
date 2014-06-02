
var todoApp = {

  ToDoItem: function(taskText) {
    this.taskText = taskText;
    this.el = undefined;
  },
  taskList: function() {
    return document.getElementById('todo-items');
  },
  createTask: function (taskText) {
    var task = new this.ToDoItem(taskText);
    this.taskList().appendChild(task.render().el);
  }
};

todoApp.ToDoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  var buttonEl = document.createElement('button');
  var itemsEl = document.createElement('div');

  buttonEl.addEventListener('click', function (e){
    // console.log(e.target);
    // e.target.parentNode.innerHTML = "BOOM";
      var liEl = e.target.parentNode;
      var olEl = liEl.parentNode;
      olEl.removeChild(liEl);

  //     setTimeout(function(){
  //     olEl.removeChild(liEl);
  // }, 500);
})
  buttonEl.innerHTML = 'Done'
  liEl.innerHTML = this.taskText;
  liEl.appendChild(buttonEl)

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
