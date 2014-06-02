

// VERY SIMPLE RETURN FORM:

// $(function(){
//   $('#todo-form').on('submit', function(e){
//     var taskText = $('#item-field').val();
//     var newItem = $('<li>').html(taskText);
//     $('#todo-list').prepend(newItem);
//     return false;
//   });
// })

// $(function(){
//   $('#todo-form').on('submit', function(e){
//     e.preventDefault();
//     var taskText = $('#item-field').val();
//     var newItem = $('<li>').html(taskText);
//     $('#todo-list').prepend(newItem);
//   });
// })


// function Item(taskText){
//   this.taskText = taskText;
//   this.el = undefined;
// };
// Item.prototype.render = function(){
//   var listItem = $('<li>').html(this.taskText);
//   this.el = listItem;
//   return this;
// };
// function(){
//   var userField = $('#item-field');
//   var newItem = new Item(userField.val())
//   var newNode = newItem.render().el;
//   $('#todo-list').append(newNode);
// }
// $(function(){
//   $('todo-form').on('submit', createTask);
// })


var toDoApp = {
  Item: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },

  createTask: function(){
    var userField = $('#new-task-field');
    var newItem = new Item(userField.val())
    var newNode = newItem.render().el;
    $('#todo-list').append(newNode);
  };
}

toDoApp.Item.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};



$(function(){
  $('todo-form').on('submit', function(){return toDoApp.createTask();});
  return false;
})
