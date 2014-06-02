


// $(function(){
//   $('#todo-form').on('submit', function(e){
//     var userField = $('#item-field');
//     var newItem = $('<li>').html(userField.val());
//     userField.val('');
//     $('#todo-list').prepend(newItem);
//     return false;
//   });
// })

function Item(taskText){
  this.taskText = taskText;
  this.el = undefined;
}

Item.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};

$(function(){
  var userField = $('#item-field');
  var newItem = new Item(userField.val())
  var newNode = newItem.render().el;
  $('#todo-list').append(newItem.render().el;)
})
