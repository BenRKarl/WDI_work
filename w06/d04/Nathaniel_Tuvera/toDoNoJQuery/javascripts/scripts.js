
var toDoApp = {
  Item: function(taskText){
    this.taskText = taskText;
    this.el       = undefined;
  },
  toDoList: function(){
    return document.getElementById('toDoList');
  },
  doneList: function(){
    return document.getElementById('doneList');
  },
  addTask: function(taskText){
    // var userInput = document.body.getElementById('toDoItem');
    // var newItem   = new this.Item(userInput.val());
    // var newNode   = newItem.render().el;
    // document.body.getElementById('toDoList').append(newNode);
    // return false;
    var task = new this.Item(taskText);
    this.toDoList().appendChild(task.render().el);
  },
  addDoneTask: function(taskText){
    var finishedTask = this.task
    this.doneList().appendChild(finishedTask.render().el);
  }
}


toDoApp.Item.prototype.dateSpan = function(text){
  var metaDataEl  = document.createElement('span');
  var date        = new Date();
  metaDataEl.innerHTML = text + ' ' + date.toLocaleDateString();
  return metaDataEl;
}

toDoApp.Item.prototype.render = function(){
  var that = this;

  var liEl      = document.createElement('li');
  var itemsEl   = document.createElement('div');
  var textEl    = document.createElement('div');
  var actionsEl = document.createElement('div');
  var buttonEl  = document.createElement('button');
  var metaDataEl= that.dateSpan('Created On:');

  itemsEl.className   = 'items';
  actionsEl.className = 'actions';
  metaDataEl.className= 'meta-data';
  buttonEl.setAttribute('id','complete')

  buttonEl.innerHTML  = 'Move to Completed';


    buttonEl.addEventListener('click', function(e){
      e.target.parentNode.children[0].style.textDecoration = 'line-through';
      // var targetItem = e.target.parentNode.children[0]
      // .append(targetItem)
      // need lines to add to completed list //
      var completedSpan = that.dateSpan('Completeled on:');
      metaDataEl.appendChild(completedSpan); // move completedSpan to other list?
    })

  textEl.innerHTML = this.taskText;

  liEl.appendChild(textEl);        // these lines are creating the item for the first time on the todo list
  liEl.appendChild(metaDataEl);
  liEl.appendChild(itemsEl);
  liEl.appendChild(buttonEl);

  this.el    = liEl;
  return this;
}

toDoApp.Item.prototype.delete = function(){
  var that = this;

  var finLiEl     = document.getElementById('')

}

window.onload = function(){
  var taskButton = document.getElementById('addItem');
  var userInput  = document.getElementById('toDoItem');
  var doneButton = document.getElementById('complete')
  taskButton.addEventListener('click', function(){
    toDoApp.addTask(userInput.value)
  });
  doneButton.addEventListener('click', function(){
    this.remove;
  })
}

// window.onload = function(){
//   var doneButton = document.getElementById('doneItem');
//   var doneItem   = document.getElementById('toDoItem');
//   doneButton.addEventListener('click', function(){
//     toDoApp.addTask(doneItem);
//   });
// }

// {
//   document.body.getElementById('toDoForm').on('submit', function(){ return toDoApp.addTask();});
// })
