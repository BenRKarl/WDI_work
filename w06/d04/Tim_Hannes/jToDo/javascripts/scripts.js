
$(function(){
  $('#todo-form').on('submit', function(/*e*/){
    // e.preventDefault();
    var taskText = $('#item-field').val();
    var newItem = $('<li>').html(taskText);
    $('#todo-list').prepend(newItem);
    return false;
  });
})
