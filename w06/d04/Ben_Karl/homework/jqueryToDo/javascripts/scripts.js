function toDoItem(taskText){
  this.taskText = taskText;
  this.el = undefined;
}

toDoItem.prototype = {
  render: function(){
    var newLi = $('<li>').html(this.taskText);
    this.el = newLi;
    return this;
  }
};

function createTask(){
  var newTaskField = $('#new-task-field');
  var newItem = new toDoItem(newTaskField.val());
  var newNode = newItem.render().el;
  $('#todo-list').append(newNode);
  return false;
}

$(function(){
  $('#new-task-button').on('click', createTask);
})

