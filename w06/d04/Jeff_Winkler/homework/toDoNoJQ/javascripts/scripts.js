console.log('Good day!');


var todoApp = {

  ToDoItem: function(taskText) {
  this.taskText = taskText;
  this.el = undefined;
  },

  tasksList: function() {
    return document.getElementById('todo-items');
  },

  createTask: function(taskText) {
    var task = new this.ToDoItem(taskText);
    this.tasksList().appendChild(task.render().el);
  }

}

todoApp.ToDoItem.prototype = {
  render: function() {
    var itemsEl = document.createElement('div');
    var metaData = document.createElement('span');
    var actionsEl = document.createElement('div');
    //var completeButton = document.createElement('button');
    var liEl = document.createElement('li');
    var buttonEl = document.createElement('button');

    itemsEl.className = 'items';
    metaData.className = 'meta-data';
    actionsEl.className = 'actions';
    //completeButton.className = 'complete';
    buttonEl.className = 'complete';

    var data = new Date();
    metaData.innerHTML = 'Created On: ' + data.toLocaleDateString() + ' ';

    buttonEl.innerHTML = 'Completed';

    buttonEl.addEventListener('click', function(e){
      var liEl = e.target.parentNode.parentNode.parentNode;
      var olEl = liEl.parentNode;
      e.target.parentNode.innerHTML = "DONE!  DONE! DONE!";
      setTimeout(function(){
        olEl.removeChild(liEl);
      }, 1000);
    });

    actionsEl.appendChild(metaData);
    actionsEl.appendChild(buttonEl);

    itemsEl.innerHTML = this.taskText;
    itemsEl.appendChild(actionsEl);

    liEl.appendChild(itemsEl);

    this.el = liEl;
    return this;
  }
}

window.onload = function() {

  var taskButton = document.getElementById('add-item');
  var userInput = document.getElementById('new-task-field');

  taskButton.addEventListener('click', function(){
    todoApp.createTask(userInput.value);
    userInput.value = "";
  });
};
