
console.log('Hi Console Viewer!')

	function ToDoItem(taskText){
    this.taskText = taskText;
    this.el = undefined;  /*element*/
	}

    ToDoItem.prototype.render = function(){
		var liEl = document.createElement('li');
		var buttonEl = document.createElement('button');

		buttonEl.addEventListener('click', function(e){
			var liEl = e.target.parentNode;
			var olEl = liEl.parentNode;
			olEl.removeChild(liEl);

			/*console.log(e.target);
			document.body.style.backgroundColor = 'pink';*/
		})
        
		buttonEl.innerHTML = 'Done';
        

		liEl.innerHTML = this.taskText;
		this.el = liEl;
		return this;
	};

	var todoApp = {
		tasksList: function(){
			return document.getElementById('todo-items');
		},
		createTask: function(taskText){
			var task = new ToDoItem(taskText);
			task.render();
			this.tasksList().appendChild(task.el);
		}
	}

	function tasksList(){
		return document.getElementById('todo-items');
	
	}

	function createTask(taskText){
		var task = new ToDoItem(taskText);
		task.render()
		tasksList().appendChild(task.el);
	}
  /*window.onload = function(){

	var taskButton = document.getElementById('add-item');
	var userInput = document.getElementById('new-task-field');

	taskButton.addEventListener('click', fucntion(){ /*anonymous function does not have a name*/
       /*todoApp.createTask(userInput.value);
	});

  };*/


}





