//  $(function() {
//    $('#todo-form').on('submit', function(e) {
//      e.preventDefault();
//      var taskText = $('#item-field').val();
//      var newItem = $('<li>').html(taskText);
//      $('#todo-list').prepend(newItem);
//      // return false;
//    });
//  })

var todoApp = {
  Item: function(taskText) {
    this.taskText = taskText;
    this.el = undefined;
  },

  createTask: function() {
    var userField = $('#item-field');
    var newItem = new this.Item(userField.val());
    var newNode = newItem.render().el;
    $('#todo-list').append(newNode);
    return false;  // keep text on page
  }    
}
 
todoApp.Item.prototype.render = function() {
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
};


$(function() {
  $('#todo-form').on('submit', todoApp.createTask);
})
