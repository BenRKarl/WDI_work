
////////////////// shortest version /////////////////////////////


// $(function(){
//   // the default behaviour of submit is sending an HTTP get request
//   // to prevent that and have a li prepended to the list, we need
//   // to call either e.preventDefault() function OR return false at the end of the script!
  
//   //$('#todo-form').on('submit', function(e){
//     //e.preventDefault();
//   $('#todo-form').on('submit', function(){
//     var taskText = $('#item-field').val();
//     var newItem = $('<li>').html(taskText);
//     $('#todo-list').prepend(newItem);
//     return false;
//   })
// })



///////////////// version with separated functions //////////////

// function Item(taskText){
//   this.taskText = taskText;
//   this.el = undefined;
// }


// Item.prototype.render = function(){
//   var listItem = $('<li>').html(this.taskText);
//   this.el = listItem;
//   return this;
// }


// function createTask(){
//   var userField = $('#item-field');
//   var newItemText = new Item(userField.val());
//   var newNode = newItem.render().el;
//   $('#todo-list').append(newNode);
// }


// $(function(){
//   // the default behaviour of submit is sending an HTTP get request
//   // to prevent that and have a li prepended to the list, we need
//   // to call either e.preventDefault() function OR return false at the end of the script!
  
//   //$('#todo-form').on('submit', function(e){
//     //e.preventDefault();
//   $('#todo-form').on('submit', function(){
//     var taskText = $('#item-field').val();
//     var newItem = $('<li>').html(taskText);
//     $('#todo-list').prepend(newItem);
//     return false;
//   })
// })



////////////////////// version without Namespace //////////////////////////

// function Item(taskText){
//   this.taskText = taskText;
//   this.el = undefined;
// }


// Item.prototype.render = function(){
//   var listItem = $('<li>').html(this.taskText);
//   this.el = listItem;
//   return this;
// }


// function createTask(){
//   var userField = $('#item-field');
//   var newItem = new Item(userField.val());
//   var newNode = newItem.render().el;
//   $('#todo-list').append(newNode);
//   return false; // prevents the default behavior of submit !!!
// }

// $(function(){ 
//   $('#todo-form').on('submit', createTask)
// })



//////////////// version with Namespace "todoApp" (preferred version) //////////////////////

var todoApp = {

  createTask: function(){
    var userField = $('#item-field');
    var newItem = new this.Item(userField.val());
    var newNode = newItem.render().el;
    $('#todo-list').append(newNode);
    return false; // prevents the default behavior of submit !!!
  },

  Item: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  }

};

todoApp.Item.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};


$(function(){
  // we enclose createTask in a function to create a "closure" that refers to the original "this"-object
  $('#todo-form').on('submit', function(){return todoApp.createTask();});
})

// //that DOES NOT WORK, because the Context of createTask changes for "this"-object
// $(function(){
//   $('#todo-form').on('submit', todoApp.createTask())
// })






