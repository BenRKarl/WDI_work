

/*$(function(){
	$('#todo-form').on('submit', function(e){
		//e.preventDefault();
		var userField = $('#item-field');
		var newItem = $('<li>').html(userField.val());
		userField.val('');
		$('#todo-list').prepend(newItem);
		return false;
	});
})*/

function Item(taskText){
  this.taskText = taskText
  this.el = undefined;
}

Item.prototype.render = function(){
	var listItem = $('<li>'>).html(this.taskTest);
	this.el = listItem;
	return this;
};


function(createTask){
  var userField = $('item-field');
  var newItemText = new Item(userField.val())
  var newNode = newItem.render().el;
  $('#todo-list').append(newNode);

}

$(function(){
	$('todo-form').on('submit', createTask);
})
