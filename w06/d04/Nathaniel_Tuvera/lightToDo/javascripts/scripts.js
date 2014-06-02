
// console.log('Hi Console Viewer');


// function ToDoItem(taskText){
//   this.taskText = taskText;
//   this.el = undefined;
// }

// ToDoItem.prototype.render = function(){
//   var liEl = document.createElement('li');
//   liEl.innerHTML = this.taskText;
//   this.el = liEl;
//   return this;
// };

// var toDoApp = {
//   tasksList: function(){
//     return document.getElementById('todo-items');
//   },
//   createTask: function(taskText){
//     var task = new ToDoItem(taskText);
//     task.render();
//     this.tasksList().appendChild(task.el);
//   }
// };

var todoApp = {
  ToDoItem: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },
  tasksList: function(){
    return document.getElementById('todo-items');
  },
  createTask: function(taskText){
    var task = new this.ToDoItem(taskText);
    this.tasksList().appendChild(task.render().el);
  }
};

todoApp.ToDoItem.prototype.render = function(){

  var liEl = document.createElement('li');
  var itemsEl = document.createElement('div');
  var actionsEl = document.createElement('div');
  var metaDataEL = document.createElement('span');
  var buttonEl = document.createElement('button');

  itemsEl.className = 'items';
  actionsEl.className = 'actions';
  metaDataEL.className = 'meta-data';
  buttonEl.className = 'complete';

  var date = new Date();
  metaDataEL.innerHTML = 'Created On: ' + date.toLocaleDateString() + ' ';

  buttonEl.innerHTML = 'Completed';
  buttonEl.addEventListener('click', function(e){

    // var liEl = e.target.parentNode;
    // var olEl = liEl.parentNode;
    // olEl.removeChild(liEl);

    var liEl = e.target.parentNode.parentNode;
    var olEl = liEl.parentNode;
    liEl.style.textDecoration = 'line-through';
    liEl.style.backgroundColor = 'pink';
    liEl.style.borderRadius = '25%';
    // setTimeout(function(){
    //   olEl.removeChild(liEl);
    // }, 500);
  })

    actionsEl.appendChild(metaDataEL);
    actionsEl.appendChild(buttonEl);

    itemsEl.innerHTML = this.taskText;
    itemsEl.appendChild(actionsEl);


  liEl.innerHTML = this.taskText;
  liEl.appendChild(buttonEl);

  this.el = liEl;
  return this;
};

window.onload = function(){
  var taskButton = document.getElementById('add-item');
  var userInput = document.getElementById('new-task-field');
  taskButton.addEventListener('click', function(){
    todoApp.createTask(userInput.value);
});

};
