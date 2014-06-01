var toDoApp = {
  Item: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },
  createTask: function(){
    var userField = $('#item-field');
    var newItem = new this.Item(userField.val())
    var newNode = newItem.render().el;
    $('#todo-list').append(newNode);
    return false;
  }
}

toDoApp.Item.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};

$(function(){                  // golf card       player    football
  $('#todo-form').on('submit', function(){ return toDoApp.createTask();});
})
