

// $(function(){

//   $('#todo-form').on('submit', function(event){
//     event.preventDefault();
//     var taskText = $('#item-field').val();
//     var newItem = $('<li>').html(taskText);
//     $('#todo-list').prepend(newItem);
//  //or, return false;  -- this will replace the event.preventDefault();
//   })
// })


//making an item
function Item(taskText){
this.taskText = taskText;
this.el = undefined;

}

//creating an item
Item.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem
  return this;
};

//creating a task
$ function createTask(){
var userField = $('#item-field');
var newItemText = new Item(userField.val())
var newNode=newItem.render().el;
$('#todo-list').append(newNode);


}

//remember () after a function mean 'evaluate'
$(function(){
 $('todo-form').on('submit', createTask);
 //where createTask is a callback -- anything in () after a .on is a callback
})

//BECOMES IN A DRY-er FORM where EVERYTHING IS IN THE CONSTRUCTOR FUNCTION

var toDoApp = {
  Item: function(taskText){
    this.taskText = taskText,
    this.el = undefined;
  },
  createTask: function(){
    var userField = $('#item-field');
    var newItem - new Item(userField.val())
    var newNode - newItem.render(.el;
      $('#todo-list').append(newNode);
      return false;
  }
}

toDoApp.Item.prototype.render = function(){
var listItem = $('<li>').html(this.taskText);
this.el = listItem;
return this;
};

$(function(){$('#todo-form').on('submit', toDoApp.createTask);
  //WHERE toDoApp.createTask returns a function
  //the createTask is now a global function therefore no longer the toDoApp referred to when it was originall
  //an object literal. Because someone else is doing the calling.
})
