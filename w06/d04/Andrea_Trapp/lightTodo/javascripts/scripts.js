console.log('Hi Console Viewer!')




// function ToDoItem(taskText){
//   this.taskText = taskText;
//   this.el = undefined;
// };


// ToDoItem.prototype.render = function(){
//   var liEl = document.createElement('li');
//   liEl.innerHTML = this.taskText;
//   this.el = liEl;
//   return this;
// };

// var todoApp = {
//   tasksList: function(){
//     return document.getElementById('todo-items');
//   },
//   createTask: function(taskText){
//     var task = new ToDoItem(taskText);
//     task.render();
//     this.tasksList().appendChild(task.el);
//   }
// };

  
//////////////////////////////////////////////////////////////////////////

var todoApp = {
  TodoItem: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },
  tasksList: function(){
    return document.getElementById('todo-items');
  },
  createTask: function(taskText){
    var task = new this.TodoItem(taskText);
    task.render();
    this.tasksList().appendChild(task.el);
  }
};

todoApp.TodoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  var itemsEl = document.createElement('div');
  var actionsEl = document.createElement('div');
  var metaData = document.createElement('span');
  var buttonEl = document.createElement('button');

  buttonEl.addEventListener('click', function(e){
    //console.log(e); // all information of the event, e holds all the info after the function is being executed !
    //console.log(e.target);  // <button>Done</button>
    //console.log(e.target.parentNode);
    //document.body.style.backgroundColor = 'red';
    //e.target.parentNode.innerHTML = "Boom";

    // Needed to remove element
    var liEl = e.target.parentNode;
    var olEl = liEl.parentNode;
    olEl.removeChild(liEl);

    // Colors and fun and timed events
    // var liEl = e.target.parentNode;
    // var olEl = liEl.parentNode;
    // liEl.style.backgroundColor = 'pink';

    // setTimeout(function(){
    //   olEl.removeChild(liEl);
    // }, 500);
    

  });
  
  liEl.innerHTML = this.taskText;
  buttonEl.innerHTML = "Done";

  liEl.appendChild(buttonEl);
  
  this.el = liEl;
  return this;
};


//////////////////////////////////////////////////////////////////////////

window.onload = function(){
  var taskButton = document.getElementById("add-item");
  var userInput = document.getElementById('new-task-field');

  taskButton.addEventListener('click', function(){
    todoApp.createTask(userInput.value);
  });
};
