console.log("What's up?")

var toDoApp = {
  ToDoItem:function(entry){
    this.entry = entry;
    this.element = undefined;
  },
  findTasksList: function(){
    return document.getElementById('todo-list');
  },
  createTask: function(entry){
    var task = new this.ToDoItem(entry);
    this.findTasksList().appendChild(task.render().element);
  }
};

toDoApp.ToDoItem.prototype.render = function(){
  var ulElement = document.createElement('li');
  var buttonElement = document.createElement('button');
  buttonElement.innerHTML = "Completed";
  buttonElement.className = "button [tiny] completed";

  buttonElement.addEventListener("click", function(e){
    var ulElement = e.target.parentNode;
    var olElement = ulElement.parentNode;
    ulElement.style.textDecoration = "line-through";

    setTimeout(function(){
      olElement.removeChild(ulElement);
    }, 9000);
  });

  buttonElement.innterHTML = "Done";

  ulElement.innerHTML = this.entry;
  ulElement.appendChild(buttonElement);
  this.element = ulElement;
  return this;
};


window.onload = function(){
  var taskButton = document.getElementById("add-item");
  var userInput = document.getElementById("item-field");
  taskButton.addEventListener('click', function(){
    toDoApp.createTask(userInput.value);
  });
};

//////////////////
// ON TO THE JQUERY TODO LIST
//////////////////

var toDOApp = {
  Item: function(entry){
    this.entry = entry;
    this.elem = undefined;
  },
  createTask: function(){
    var userField = $('#new-entry');
    var newItem = new this.Item(userField.val());
    var newNode = newItem.render().elem;
    $('#the-list').append(newNode);
    return false;
  }
};

var completeTask = {

}

toDOApp.Item.prototype.render = function(){
  var date = new Date();
  var listItem = $("<li type='task'>").html( this.entry + "<button type='submit' class='button [tiny] completed' id='complete'>DID IT</button> <br> <cite> Created: " + date.toString() + '</cite><hr>');
  this.elem = listItem;
  return this;
};

$(function(){
  $('#jq-todo-form').on('submit', function(){ return toDOApp.createTask();});
});


// ---------------
$('#task').on('submit', function(){ setInterval(function(){ letThereBeLove(50);}, 50) });
  });

function letThereBeLove(numHearts){
  for (var i = 0; i < numHearts; i++) {
    var newHeart = $("<h1 class='hearts'>&hearts;</h1>");
    $('body').append(newHeart);
  };

  $('.hearts').each(function(id, el){
    $(el).animate({
        top: ((Math.random()*200) - 50) + '%',
        left: ((Math.random()*200) - 50) + '%',
        opacity: 0
      }, 2000, 'linear', function(){ $(this).remove();
    });
  });
}
