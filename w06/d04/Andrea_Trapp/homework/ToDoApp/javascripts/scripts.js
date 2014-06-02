//////////////// version with Namespace "todoApp" (preferred version) //////////////////////

// Namespace
var todoApp = {

  // Constructor
  Task: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },

  createTask: function(taskText){
    var task = new this.Task(taskText);
    this.appendTask(task);
  },

  appendTask: function(task){
    this.tasks().appendChild(task.render().el);
  },

  tasks: function(){
    return document.getElementById('todo-items');
  },

};

// Proto

todoApp.Task.prototype.dateDiv = function(text){
  var metaDataEL = document.createElement('div');
  var date = new Date();
  metaDataEL.innerHTML = text + ' ' +  date.toLocaleDateString();
  return metaDataEL;
};

todoApp.Task.prototype.render = function(){
  var that = this;
  
  var liEl = document.createElement('li');
  var textEl = document.createElement('div');
  var buttonEl = document.createElement('button');
  var metaDataEL = that.dateDiv('Created On:');

  buttonEl.className = 'complete';
  metaDataEL.className = 'meta-data';
 
  textEl.innerHTML = this.taskText;

  buttonEl.innerHTML = 'completed'; 
  buttonEl.addEventListener('click', function(e){  
    e.target.parentNode.children[0].style.textDecoration = 'line-through';   
    var completedSpan = that.dateDiv('Competed On:');  
    metaDataEL.appendChild(completedSpan);
    e.target.parentNode.children[2].hidden = true; // refers to **
  });

  liEl.appendChild(textEl);
  liEl.appendChild(metaDataEL);   
  liEl.appendChild(buttonEl);  // ** this is : e.target.parentNode.children[2] (see above)

  this.el = liEl;
  return this;
};



window.onload = function(){
  var userInput = document.getElementById('new-task-field');
  var button = document.getElementById('add-item');
  button.addEventListener('click', function(){
    todoApp.createTask(userInput.value);
    userInput.value = '';
  })
}
