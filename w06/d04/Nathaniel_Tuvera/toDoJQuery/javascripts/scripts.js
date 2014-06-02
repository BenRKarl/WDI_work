
var toDoApp = {
  Item: function(taskText){
    this.taskText = taskText;
    this.el       = undefined;
  },
  TaskList: function(){
    return document.getElementById('toDoList')
  },
  addTask: function(){
    var userInput = $('#toDoInput');
    var newItem   = new this.Item(userInput.val())
    var newNode   = newItem.render().el;
    // $('#toDolist').append(buttonEl);
    $('#toDoList').append(newNode);
    return false;
  }
};

toDoApp.Item.prototype.render = function(){
  var toDoItem = $('<li>').html(this.taskText);
  var buttonEl = $('<button type="checkbox"></button>')
  this.el      = toDoItem;;
  return this;
};

$(function(){
  $('#toDoForm').on('submit', function() {return toDoApp.addTask();});
});
