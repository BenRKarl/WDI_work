// $(function () {
//   $('#todo-form').on('submit', function (e) {
//     e.preventDefault();
//     var taskText = $('#item-field').val();
//     var newItem = $('<li>').html(taskText);
//     $('#todo-list').prepend(newItem);
//     return false;
//   });
// });

var toDoApp = {
  Item: function (taskText) {
    this.taskText = taskText;
    this.el = undefined;
  },
  createTask: function () {
    var userField = $('#item-field');
    var newItem = new this.Item(userField.val());
    $('#todo-list').append(newItem.render().el);
    return false;
  }
};

toDoApp.Item.prototype.render = function () {
  var listItem = $('<li>').html(this.taskText);
  this.el = listItem;
  return this;
}

$(function() {
  $('#todo-form').on('submit', function() { return toDoApp.createTask(); });
})
