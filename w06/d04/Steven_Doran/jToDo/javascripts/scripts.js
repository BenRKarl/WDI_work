



// $(function(){
//    $('#todo-form').on('submit', function(e){
//       e.preventDefault();
//       var userField = $('#item-field');
//       var newItem = $('<li>').html(userField.val());
//       userField.val('');
//       $('#todo-list').prepend(newItem);
//    });
// })


// function Item(taskText){
//    this.taskText = taskText;
//    this.el = undefined;
// };

// Item.prototype.render = function(){
//    var listItem = $('<li>').html(this.taskText);
//    this.el = listItem;
//    return this;
// };

// function createTask(){
//    var userField = $('#item-field');
//    var newItem = new Item(userField.val());
//    var newNode = newItem.render().el
//    $('todo-list').append(newNode);
//    return false;
// };


var toDoApp = {
   Item: function(taskText){
      this.taskText = taskText;
      this.el = undefined;
   },
   createTask: function(){
      var userField = $('#item-field');
      var newItem = new this.Item(userField.val());
      var newNode = newItem.render().el
      $('#todo-list').append(newNode);
      return false;
   }
};

toDoApp.Item.prototype.render = function(){
   var listItem = $('<li>').html(this.taskText);
   this.el = listItem;
   return this;
};


$(function(){
   $('#todo-form').on('submit', function(){ return toDoApp.createTask();});
})


























