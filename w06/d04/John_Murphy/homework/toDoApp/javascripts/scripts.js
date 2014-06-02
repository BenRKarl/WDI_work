// ###A Javascript ToDo Application (without jQuery)
// - Must be able to create new tasks and complete tasks
// - Take it further!

// ---

// console.log('Hi Console Viewer!')

// function ToDoItem(taskText){
//   this.taskText = taskText;
//   this.el = undefined;
// }

// ToDoItem.prototype.render = function(){
//   var liEl = document.createElement('li');
//   liEl.innerHTML = this.taskText;
//   this.el = liEl;
//   return this
// }

// ToDoItem.prototype.logTaskText = function(){
//   console.log(this.taskText);
// }

// var thingToDo = new ToDoItem('Bounce Bounce Bounce')



// var todoApp = {

//   tasksList: function (){
//   return document.getElementById('todo-items');
// },

//   createTask: function (taskText){
//   var task = new ToDoItem(taskText);
//   this.tasksList().appendChild(task.render().el);
// }

// }

console.log('Hi Console Viewer!')







var todoApp = {

   ToDoItem: function (taskText){
    this.taskText = taskText;
    this.el = undefined;
  },
    tasksList: function (){
    return document.getElementById('todo-items');
  },

    createTask: function (taskText){
    var task = new this.ToDoItem(taskText);
    this.tasksList().appendChild(task.render().el);
  }

}

todoApp.ToDoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  var buttonEl = document.createElement('button');
  buttonEl.addEventListener('click', function(event){
    var liEl = event.target.parentNode;
    var olEl = liEl.parentNode;
    olEl.removeChild(liEl)

    console.log(event.target)
    // event.target.style.borderRadius = "10px"
    document.body.style.backgroundColor = 'lightgreen'
  })

  buttonEl.innerHTML = "Done"

  liEl.innerHTML = this.taskText;
  liEl.appendChild(buttonEl)
  this.el = liEl;

  return this
}

todoApp.ToDoItem.prototype.logTaskText = function(){
  console.log(this.taskText);
}

var thingToDo = new todoApp.ToDoItem('Bounce Bounce Bounce')


window.onload = function(){

  var taskButton = document.getElementById('add-item');
  var userInput = document.getElementById('new-task-field');

  taskButton.addEventListener('click', function(){
    todoApp.createTask(userInput.value)
  });
};
