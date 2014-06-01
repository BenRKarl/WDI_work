var toDoApp = {
  Task: function(taskText){
    this.taskText = taskText;
    this.elem = undefined;

  },
  createTask: function(){
    var inputField = $('#user_input');
    var newTask = new this.Task(inputField.val());
    var taskRender = newTask.render();
    var listItem = taskRender.elem;
    $('#top_task_list').append(listItem);
    listItem.append(taskRender.deleteButton);
    inputField.val('');
    return false;
  },
  deleteTask: function(taskLi){
   taskLi.remove();
  }
};

toDoApp.Task.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  var deleteButton = $('<button>').html('Delete');
  deleteButton.click(function(){
    toDoApp.deleteTask(this.parentElement);
  });
  this.elem = listItem;
  this.deleteButton = deleteButton;

  return this;
};


$(function(){
  $('#task_input_form').on('submit', function(){ return toDoApp.createTask();});
});