
// $(function(){
//   $('#todo-form').on('submit', function(e){
//     //e.preventDefault();
//     var taskTest = $('#item-field').val();
//     var newItem = $('<li>').html(taskTest);
//     $('#todo-list').prepend(newItem);
//     return false;
//   })
// })



function Item(taskTest){
  this.taskTest = taskTest;
  this.el = undefined;
}

Item.prototype = {
  render: function() {
    var listItem = $('<li>').html(this.taskTest);
    this.el = listItem
    return this;
  }
}


function createTask(){
  var userField = $('#item-field');
  var newItem = new Item(userField.val());
  $('#todo-list').append(newItem.render().el);
  return false;
  }

$(function() {
  $('#todo-form').on('submit', createTask);
})








