

// $(function(){
//   $('#todo-form').on('submit', function(e){
//     // e.preventDefault();
//     var taskText = $('#item-field').val();
//     $('#item-field').val('');
//     var newItem  = $('<li>').html(taskText);
//     $('#todo-list').prepend(newItem);
//     return false;
//   });
// })

  // function Item(taskText){
  //   this.taskText = taskText;
  //   this.el = undefined;
  // }

  // Item.prototype.render = function() {
  //   var listItem = $('<li>').html(this.taskText);
  //   this.el = listItem;
  //   return this;
  // };

  // function createTask(){
  //   var userField = $('#item-field');
  //   var newItem = new Item(userField.val());
  //   var newNode = newItem.render().el;
  //   $('#todo-list').append(newNode);
  // }

  // $(function(){
  //   $('#todo-form').on('submit', createTask);
  // })


function ToDoApp(cssSelect){
  this.cssSelector;
  this.el = $(cssSelector);
}

var toDoApp.prototype = {
  Item: function(taskText){
  this.taskText = taskText;
  this.el = undefined;
},
  createTask: function(){
  var userField = $('#item-field');
  var newItem = new Item(userField.val());
  var newNode = newItem.render().el;
  $('#todo-list').append(newNode);
  return false;
  }
}

toDoApp.Item.prototype.render = function() {
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};


$(function(){
  $('#todo-form').on('submit', function(){ return toDoApp.createTask();});
})

// function(){ return toDoApp.createTask();}); vs toDoApp.createTask)
