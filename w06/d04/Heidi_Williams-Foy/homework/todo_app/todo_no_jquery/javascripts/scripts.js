function ToDoItem(taskText){
this.taskText = taskText;
this.el = undefined;
}

ToDoItem.prototype.render = function(){
var liEl = document.createElement('li');
liEl.innerHTML = this.taskText;
this.el = liEl;
return this;
};


var todoApp = {
tasksList: function(){
return document.getElementById('todo-items');
},
createTask: function(taskText){
var task = new ToDoItem(taskText);
task.render();
this.tasksList().appendChild(task.el);