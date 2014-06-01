
var todoApp = {
   itemList: function(){
     return document.getElementById('todo_list');
     

   },

  TodoItem: function(itemName){
    this.itemName = itemName;
  },

  createItem: function(itemName){
    var new_task = new this.TodoItem(itemName);
    new_task.render()
    this.itemList().appendChild(new_task.itemElem);

  }
}

todoApp.TodoItem.prototype.render = function(){
  var itemElem = document.createElement('li');
  itemElem.innerHTML = this.itemName;
  this.itemElem = itemElem;
}

window.onload = function(){
  var itemField = document.getElementById('task_field');
  var itemBtn = document.getElementById('task_submit');

  itemBtn.addEventListener('click', function(){
    var itemName = itemField.value;
    todoApp.createItem(itemName);
    itemField.value="";
  })
}