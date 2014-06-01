
var todoApp = {
   itemList: function(){
     return document.getElementById('todo_list');
   },

  TodoItem: function(itemName){
    this.itemName = itemName;
  },

  createItem: function(itemName,parentList){
    var new_task = new this.TodoItem(itemName);
    new_task.render()
    parentList.appendChild(new_task.itemElem);
  },

  deleteItem: function(e){
    var parent = e.target.parentElement.parentElement;
    var item = e.target.parentElement;

    parent.removeChild(item);
  },

  createSubItem: function(parentList){
    var subField = document.createElement('input');
    var subBtn = document.createElement('button');

    subField.setAttribute('type','textfield');
    subBtn.innerHTML = 'submit';
    subBtn.addEventListener('click', function(){ 
        todoApp.createItem(subField.value, parentList);
        parentList.removeChild(subField);
        parentList.removeChild(subBtn);
    });
    parentList.appendChild(subField);
    parentList.appendChild(subBtn);

  }


}

todoApp.TodoItem.prototype.render = function(){
  var itemElem = document.createElement('li');
  var subItemBtn = document.createElement('button');
  var subItemList = document.createElement('ol');
  var deleteBtn = document.createElement('button');

  itemElem.innerHTML = this.itemName;
  subItemBtn.innerHTML = "Add sub task";
  deleteBtn.innerHTML = "Delete";

  subItemBtn.addEventListener('click', function(e){
    var parentItem = e.target.nextSibling;
    todoApp.createSubItem(parentItem);
  });
  deleteBtn.addEventListener('click', function(e){
    todoApp.deleteItem(e);
  });

  itemElem.appendChild(deleteBtn);
  itemElem.appendChild(subItemBtn);
  itemElem.appendChild(subItemList);

  this.itemElem = itemElem;
}

window.onload = function(){
  var itemField = document.getElementById('task_field');
  var itemBtn = document.getElementById('task_submit');

  itemBtn.addEventListener('click', function(){
    var itemName = itemField.value;
    var parentList = todoApp.itemList();
    todoApp.createItem(itemName,parentList);
    itemField.value="";
  })
}