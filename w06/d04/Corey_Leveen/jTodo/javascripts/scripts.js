

/*
$(function(){
  $('#todo-form').on('submit', function(e){
    e.preventDefault();
    var taskText = $('#item-field').val();
    var newItem = $('<li>').html(taskText);
    userField.val('');
    $('#todo-list').prepend(newItem);
    return false;
  });
});
*/


function Item(taskText){
  this.taskText = taskText;
  this.el = undefined;
}

Item.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};

function createTask(){
  var userField = $('#item-field');
  var newItem = new Item(userField.val())
  var newNode = newItem.render().el;
  $('#todo-list').append(newNode);
  return false;
}

$(function(){
  $('todo-form').on('submit', createTask);
})
