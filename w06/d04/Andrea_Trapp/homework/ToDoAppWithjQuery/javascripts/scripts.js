//////////////// version with Namespace "todoApp" (preferred version) //////////////////////

// Namespace
var todoApp = {

  // Constructor
  Task: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },

///////////////////////////////////////////////////////
  // createTask: function(){
  //   var taskText = $('#new-task-field');
  //   var newTask = new this.Task(taskText.val());
  //   var newTaskListItem = newTask.render().el;
  //   $('#todo-items').append(newTaskListItem);
  //   taskText.val(""); // empties input field for create task 
  //   return false; // prevents the default behavior of submit, which is sending a get request instead of appending a new list item !!!
  // },

  // the code for createTask above is being replaced by the following 3 functions
  // similar to the javascript version of Todo App
  createTask: function(){
    var taskText = $('#new-task-field');
    var task = new this.Task(taskText.val());
    this.appendTask(task);
    taskText.val("");
    return false;
  },

  appendTask: function(task){    
    this.tasks().append(task.render().el);
  },

  tasks: function(){
    return $('#todo-items');
  },
///////////////////////////////////////////////////////
};

// Proto

todoApp.Task.prototype.dateDiv = function(text){  
  var date = new Date();
  var metaDataEL = $('<li>').html(text + ' ' +  date.toLocaleDateString()); 
  return metaDataEL;
};

todoApp.Task.prototype.render = function(){
  // var taskItem = $('<li>').html(this.taskText);
  // this.el = taskItem;
  // return this;

  var that = this;
  
  var liEl = $('<li>');
  var textEl = $('<div>');
  var buttonEl = $('<button>');
  var metaDataEL = that.dateDiv('Created On:');

  buttonEl.addClass('complete');
  metaDataEL.addClass('meta-data');
 
  textEl.html(this.taskText);

  buttonEl.html('completed'); 

  buttonEl.on('click', function(e){  
    e.target.parentNode.children[0].style.textDecoration = 'line-through';   
    var completedSpan = that.dateDiv('Competed On:');  
    metaDataEL.append(completedSpan);
    e.target.parentNode.children[2].hidden = true; // refers to **
  });

  liEl.append(textEl);
  liEl.append(metaDataEL);   
  liEl.append(buttonEl);  // ** this is : e.target.parentNode.children[2] (see above)

  this.el = liEl;
  return this;
};


$(function(){
  // we enclose createTask in a function to create a "closure" that refers to the original "this"-object
  $('#todo-form').on('submit', function(){
    return todoApp.createTask();
  });
})

