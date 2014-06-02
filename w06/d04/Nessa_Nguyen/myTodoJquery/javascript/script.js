var todoApp = {
  TodoItem: function(taskText) {
    this.taskText = taskText;
    this.el = undefined;  
  },

  seedTask: function(taskText) {
    var task = new this.TodoItem(taskText);
    var newNode = task.render().el;
    $('#todo-list').append(newNode); 
    return false;     
  },

  addTask: function(taskText) {
    var inputText = $('#task-input').val();
    var task = new this.TodoItem(inputText);
    var newNode = task.render().el;
    $('#todo-list').append(newNode);      
    return false;
  }
};

todoApp.TodoItem.prototype.render = function() {
  var newLi = $('<li>').html(this.taskText);

  var timestamp = new Date().toLocaleDateString();
  timeText = "<br/><span class='timestamp'> Created on: " + timestamp + "</span>";
  newLi.append(timeText);

  var doneButton = $('<button>').html('Finish');
  newLi.append(doneButton);
  doneButton.on('click', function(e) {
    doneButton.parent().remove();

    doneItem = doneButton.parent();
    doneButton.remove();
    doneStamp = new Date().toLocaleDateString();
    doneText = "<span class='timestamp'> - Finished on: " + doneStamp + "</span>";
    doneItem.append(doneText);
    $('#done-list').append(doneItem);
  });

  this.el = newLi;
  return this;
};
 

$(function() {
  todoApp.seedTask('Write everything in pure javascript');
  todoApp.seedTask('Recode using jQuery');  
  $('#task-submit').on('click', function() { 
    return todoApp.addTask();
  });
})
