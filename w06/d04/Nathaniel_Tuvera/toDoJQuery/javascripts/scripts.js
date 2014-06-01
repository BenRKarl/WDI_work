
var toDoApp = {
  Item: function(taskText){
    this.taskText = taskText;
    this.el       = undefined;
  },
  addTask: function(){
    var userInput = $('#toDoInput');
    var newItem   = new this.Item(userInput.val())
    var newNode   = newItem.render().el;
    $('#toDoList').append(newNode);
    return false;
  }
};

toDoApp.Item.prototype.render = function(){
  var toDoItem = $('<li>').html(this.taskText);
  this.el      = toDoItem;;
  return this;
};

$(function(){
  $('#toDoForm').on('submit', function() {return toDoApp.addTask();});
});
