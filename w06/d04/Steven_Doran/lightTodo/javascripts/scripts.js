console.log('Hi Console Viewer!');

var toDoApp = {
  ToDoItem: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },
  tasksList: function(){
    return document.getElementById('todo-items');
  },
  createTask: function(taskText){
    var task = new this.ToDoItem(taskText);
    task.render();
    this.tasksList().appendChild(task.el);
  }
};

toDoApp.ToDoItem.prototype.dateSpan = function(text){
  var metaDataEl = document.createElement('span');
  var date = new Date();
  metaDataEl.innerHTML = text + ' ' + date.toLocaleDateString();
  return metaDataEl;
}

toDoApp.ToDoItem.prototype.render = function(){
  var that = this;

  var liEl = document.createElement('li');
  var itemsEl = document.createElement('div');
  var textEl = document.createElement('div');
  var actionsEl = document.createElement('div');
  var buttonEl = document.createElement('button');
  var metaDataEl = that.dateSpan('Create On: ');

  itemsEl.className = 'items';
  actionsEl.className = 'actions';
  metaDataEl.className - 'meta-data';
  buttonEl.className = 'complete';

  var date = new Date();
  metaDataEl.innerHTML = 'Created on: ' + date.toLocaleDateString() + ' ';

  buttonEl.innerHTML = 'Completed';

  buttonEl.addEventListener('click', function(e){
    
    e.target.parentNode.children[0].style.textDecoration = 'line-through';
    var comepletedSpan = that.dateSpan('Completed On: ');
    metaDataEl.appendChild(comepletedSpan);
  });

  textEl.innerHTML = this.taskText;

  liEl.appendChild(textEl);
  liEl.appendChild(metaDataEl);
  liEl.appendChild(itemsEl);
  liEl.appendChild(buttonEl);

  this.el = liEl;
  return this;
};

window.onload = function(){
  var taskButton = document.getElementById('add-item');
  var userInput = document.getElementById('new-task-field');

  taskButton.addEventListener('click', function(){
    toDoApp.createTask(userInput.value);
  });
}

