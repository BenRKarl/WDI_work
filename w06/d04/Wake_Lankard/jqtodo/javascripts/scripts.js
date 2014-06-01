var toDoApp = {
  Task: function(taskText){
    this.taskText = taskText;
    this.elem = undefined;

  },
  createTask: function(){
    var inputField = $('#user_input');
    var newTask = new this.Task(inputField.val());
    var taskRender = newTask.render();
    var listItem = taskRender.elem;
    $('#top_task_list').append(listItem);
    listItem.append(taskRender.deleteButton);
    inputField.val('');
    return false;
  },
  deleteTask: function(taskLi){
   
   toDoApp.blowup(taskLi);
   taskLi.remove();
  },

blowup: function(){
  for (var i = 0; i < 100; i++) {
    var newThing = $("<h1 class='things'>&star;</h1>");
    $('body').append(newThing);
    newThing.css('top', event.y + 'px');
    newThing.css('left', event.x + 'px');
  };

  $('.things').each(function(idx, el){
    $(el).animate({
      top: ((Math.random()*200)-50) + '%',
      left: ((Math.random()*200)-50) + '%',
      opacity: 0
    }, 2000, 'linear', function(){ $(this).remove(); }
    );
  });


}

};

toDoApp.Task.prototype.render = function(){
  var listItem = $('<li>').html(this.taskText);
  var deleteButton = $('<button>').html('<i class="fa fa-trash-o"></i>');
  deleteButton.click(function(){
    toDoApp.deleteTask(this.parentElement);
  });
  this.elem = listItem;
  this.deleteButton = deleteButton;

  return this;


};


$(function(){
  $('#task_input_form').on('submit', function(){ return toDoApp.createTask();});
});