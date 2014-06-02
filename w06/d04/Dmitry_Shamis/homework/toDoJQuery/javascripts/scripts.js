var toDoApp = {
  Task: function (taskText) {
    this.taskText = taskText;
    this.el = undefined;
  },

  createTask: function () {
    var input = $('.task');
    var newItem = new this.Task(input.val());
    $('.task-list').append(newItem.render().el);
    return false;
  }
}

toDoApp.Task.prototype.render = function () {
  var listItem = $('<li>')
  var taskEl = $('<span>').html(this.taskText);
  var completeEl = $('<button>').addClass("completed").html('Completed');
  var addedEl = $('<span>').html(" Added: " + new Date().toLocaleDateString());
  listItem.append(taskEl);
  listItem.append(completeEl);
  listItem.append(addedEl);
  this.el = listItem;
  return this;
}

$(function() {
  $('.todo-form').on('submit', function() {
    return toDoApp.createTask();
  });

  $('.completed').on('click', function() {
    var completedEl = $('<span>').html(" Completed: " + new Date().toLocaleDateString());
    $('.completed').parent().append(completedEl);
  });
})
