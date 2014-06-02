// $(function(){
//   $('#todo-form').on('submit', function(e){
//     e.preventDefault();
//     var taskTest = $('#item-field').val();
//     var newItem = $('<li>').html(taskTest);
//     var delButton = $('<button>').html("Completed");
//     newItem.append(delButton);
//     $(delButton).on('click', function(){
//       $(this.parentNode).remove();
//     });
//     $('#todo-list').prepend(newItem);
//     $('#item-field').val("");
//   })
// })


function createTask() {
  var taskTest = $('#item-field').val();
  var newItem = $('<li>').html(taskTest);
  var delButton = $('<button>').html("Completed");
  newItem.append(delButton);
  $(delButton).on('click', function(){
    $(this.parentNode).remove();
  });
  $('#todo-list').prepend(newItem);
  $('#item-field').val("");
  return false;
}

$(function(){
  $('#todo-form').on('submit', createTask);
})
