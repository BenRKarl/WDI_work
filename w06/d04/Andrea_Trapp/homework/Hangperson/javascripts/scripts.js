
function TodoItem(taskText){
  this.taskText = taskText;
  this.el = undefined;
}

TodoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  liEl.innerHTML = this.taskText;
  this.el = liEl;
  return this;
};

var toDoApp = {
  tasks: function(){
    return document.getElementById('todo-items');
  },
  createTask: function(taskText){
    var task = new TodoItem(taskText);
    this.appendTask(task);
  },
  appendTask: function(task){
    this.tasks().appendChild(task.render().el);
  }
};

window.onload = function(){
  var userInput = document.getElementById('new-task-field');
  var button = document.getElementById('add-item');
  button.addEventListener('click', function(){
    toDoApp.createTask(userInput.value);
  })
}



//////////////// version with Namespace "todoApp" (preferred version) //////////////////////

var todoApp = {

  createTask: function(){
    var userField = $('#item-field');
    var newItem = new this.Item(userField.val());
    var newNode = newItem.render().el;
    $('#todo-list').append(newNode);
    return false; // prevents the default behavior of submit !!!
  },

  Item: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  }

};

todoApp.Item.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};


$(function(){
  // we enclose createTask in a function to create a "closure" that refers to the original "this"-object
  $('#todo-form').on('submit', function(){return todoApp.createTask();});
})