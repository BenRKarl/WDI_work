
// Constructor
function DisplayName(nameText){
  this.nameText = nameText;
  this.el = undefined;
}

// Creating the HTML element (node), render function in prototype
DisplayName.prototype.render = function() {
  var nameEl = $('<p>').text(this.nameText).css({'font-size': '20px', margin: '10px', padding: '10px', 'background-color': 'lightyellow'});
 
  this.el = nameEl;
  return this;
}

// display the Name
function displayName(){
  var nameField = $('#name-field');  
  var newName = new DisplayName(nameField.val());
  var newNode = newName.render().el;
  $('#name-display').append(newNode);
  nameField.val('');
  return false; // prevents the default-behaviour for the form-submit, which would be sending a GET request
}

$(function(){  
  $('#name-form').on('submit', displayName)
 
  // version without html form 
  //$('#display-button').click(displayName)  
  // another option
  //$('#display-button').on('click', displayName)
})
