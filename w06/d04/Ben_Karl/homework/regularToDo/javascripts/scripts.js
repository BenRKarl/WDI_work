toDoApp = {
//constructor function
  ToDoItem: function(taskText){
    this.taskText = taskText;
    this.el = undefined;
  },

  toDoListUl: function(){
    return document.getElementById('to-do-list');
  },

  addTaskToList: function(newTaskText){
    var newToDoItem = new this.ToDoItem(newTaskText);
    this.toDoListUl().appendChild(newToDoItem.render().el);
  }

};

toDoApp.ToDoItem.prototype = {
  render: function(){
    //creates empty 'li' and sets inner value to object's taskText
    var liEl = document.createElement('li');
    liEl.innerHTML = this.taskText + " ";

    //creates empty 'button,' sets its inner value and appends it to above 'li'
    var buttonEl = document.createElement('button');
    buttonEl.innerHTML = "Done did dat";
    liEl.appendChild(buttonEl);

    buttonEl.addEventListener('click', function(e){
      var liEl = e.target.parentNode;
      var olEl = liEl.parentNode;
      olEl.removeChild(liEl);
    });

    this.el = liEl;
    return this
  }
};

window.onload = function(){
  var newTaskButton = document.getElementById('new-task-button');
  var newTaskField = document.getElementById('new-task-field');
  newTaskButton.addEventListener('click', function(){
    toDoApp.addTaskToList(newTaskField.value);
  });
};
