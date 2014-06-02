var todoApp = {
  ToDoItem: function(taskText) {
    this.taskText = textText;
    this.el = undefined;
  },

seedTask: function(taskText) {
  var task = new this.TodoItem(taskText);
  var newNode = task.render().el;
  $("#todo-list").append(newNode);
  return false;
},

addTask: function(taskText) {
  var inputText = $("task-input").val();
  var task = new this.Todoitem(inputText);
  var newNode = task.render().el;
  $("#todo-list").append(newNode);
  return false;
}
};

todoApp.TodoItem.prototype.render = function() {
  var newLi = $("<li>").html(this.taskText);
}

var doneButton = $("<button>").html("Delete");
newli.append(doneButton);
doneButton.on("click", function(e) {
  doneButton.parent().remove();
  doneItem = doneButton.parent();
  doneButton.remove();
 doneItem.append(doneText);
 $("#done-list").append(doneItem);

});

this.el = newLi;
return this;
});

$(function() {
  todoApp.seedTask("Write something");
  todoApp.seedTask("Word");
  $("task-submit").on("click", function(){
    return todoApp.addTask();
  });
})
