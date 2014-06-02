// var thingToDo = new ToDoItem('Counce Bounce')




console.log('What do you have to do today?')


var todoApp = {
  // The constructor function
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

todoApp.ToDoItem.prototype.render = function(){
  var liEl = document.createElement('li');
  // var itemsEl = document.createElement('div');
  // var actionsEl = document.createElement('div');
  // var metaDataEl = document.createElement('span');
  var buttonEl = document.createElement('button');

  // itemsEl.className = 'items';
  // actionsEl.className = 'actions';
  // metaDataEl.className = 'meta-data';
  // buttonEl.className = 'complete';


  // // itemsEl.innerHTML = this.

  // actionsEl.appendChild(metaDataEl);
  // actionsEl.appendChild(buttonEl);

  // var data = new Date();
  // metaDataEl.innerHTML = 'Created On: ' + date.toLocaleDateString() + ' ';

  buttonEl.innerHTML = "Completed";
  buttonEl.addEventListener('click', function(e){
      // // needed to remove element
      // var liEl = e.target.parentNode;
      // var olEl = liEl.parentNode;
      // olEl.removeChild(liEl);

      // // Colors and fun timed events
      // var liEl = e.target.parentNode;
      // var olEl = liEl.parentNode;
      // liEl.style.backgroundColor = "pink";
      // liEl.style.textDecoration = 'line-through'
      // liEl.style.borderRadius = '25%';
      // setTimeout(function(){
      //   olEl.removeChild(liEl);
      // }, 500);

      // Colors and fun timed events
      var liEl = e.target.parentNode.parentNode;
      var olEl = liEl.parentNode;
      liEl.style.textDecoration = 'line-through'

    })


    // olEl.removeChild(liEl);
    //   e.target.parentNode.innerHTML = "BOOM"



  liEl.innerHTML = this.taskText;
  liEl.appendChild(buttonEl)

  this.el = liEl;
  return this;
};

// function randomColor(){
//   var randomColor = Math.floor(Math.random()*16777215).toString(16);
//   return randomColor;
// }

window.onload = function(){
  var taskButton = document.getElementById('add-item');
  var userInput = document.getElementById('new-task-field')

  // function randomColor(){
  //   var randomColor = Math.floor(Math.random()*16777215).toString(16);
  //   return randomColor;
  // };

  taskButton.addEventListener('click', function(){
    // document.body.style.backgroundColor = randomColor();
    todoApp.createTask(userInput.value);

  });


};

