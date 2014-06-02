
// console.log('Hello, user!')

var todoApp = {
  ToDoShit: function(shitText){
    this.shitText = shitText;
    this.el = undefined;
  },
  shitsList: function(){
    return document.getElementById('shit-todo');
  },
  createShit: function(shitText){
    var shit = new this.ToDoShit(shitText);
    this.shitsList().appendChild(shit.render().el);
    }
  };

  todoApp.ToDoShit.prototype.render = function(){
    var liEl = document.createElement('li');
    var itemsEl = document.createElement('div');
    var actionsEl = document.createElement('div');
    var metaDataEl = document.createElement('span');
    var buttonEl = document.createElement('button');

  buttonEl.addEventListener('click', function(e){
    var liEl = e.target.parentNode;
    var olEl = liEl.parentNode;
    liEl.style.textDecoration = 'line-through';
    liEl.style.backgroundColor= 'lightgrey';
    setTimeout(function(){
    olEl.removeChild(liEl);
    }, 1000);
  })

  buttonEl.innerHTML = 'Completed';

  liEl.innerHTML = this.shitText;
  liEl.appendChild(buttonEl)

  this.el = liEl;
  return this;
};

window.onload = function(){
  var taskButton = document.getElementById('add-shit-todo');
  var userInput = document.getElementById('new-shit-todo');
  taskButton.addEventListener('click', function(){
    todoApp.createShit(userInput.value);
  });
};
