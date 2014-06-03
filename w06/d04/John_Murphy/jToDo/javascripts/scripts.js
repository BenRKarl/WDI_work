



// $(function(){
//   $('#todo-form').on('submit', function(event){
//     event.preventDefault();
//     var taskText = $('#item-field').val();
//     var newItem = $('<li>').html(taskText);
//     $('#todo-list').prepend(newItem);
//   });
// })


/////////////////////////////

// function Item(taskText){
//   this.taskText = taskText;
//   this.el = undefined;
// }

// Item.prototype.render = function(){
//   var listItem = $('<li>').html(this.taskText);
//   this.el = listItem;
//   return this;
// };


// function createTask(){
//   var userField = $('#item-field');
//   var newItem = new Item(userField.val());
//   var newNode = newItem.render().el;
//   $('#todo-list').append(newNode);
//   return false;
// }

// $(function(){
//   $('#todo-form').on('submit', createTask);
// })




/////////////////////////////


function ToDoApp(cssSelector){

}

var toDoApp = {
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

ToDoApp.Item.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};

$(function(){
  $('#todo-form').on('submit', toDoApp.createTask);
})
}
