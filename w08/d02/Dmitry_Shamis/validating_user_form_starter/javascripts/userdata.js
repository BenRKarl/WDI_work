console.log("Test")

//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  $('#user_name_error').html('');
  var name = name;
  if (name.length >= 3) {
    return true;
  } else {
    var span = $('<span>').attr('id', 'user_name_error')
    .html(" Name must be more than 3 characters!")
    $('#user_name').after(span);
    return false;
  }
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  $('#user_age_error').html('');
  var age = parseInt(age);
  if (typeof age === "number") {
    return true;
  } else {
    var span = $('<span>').attr('id', 'user_age_error')
    .html(" Age must be a number!")
    $('#user_age').after(span);
    return false;
  }
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  $('#user_ph_error').html('');
  var phone = phone;
  var regEx = /\(?\d{3}\)?[-. ]?\d{3}[-.]?\d{4}/;
  if (regEx.test(phone)) {
    return true;
  } else {
    var span = $('<span>').attr('id', 'user_age_error')
    .html(" Phone must be valid (555-555-5555)!")
    $('#user_ph').after(span);
    return false;
  }
}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  $('#user_email_error').html('');
  var email = email;
  var regEx = /.*@.*/
  if (regEx.test(email)) {
    return true;
  } else {
    var span = $('<span>').attr('id', 'user_email_error')
    .html(" Email must be valid!")
    $('#user_email').after(span);
    return false;
  }
}

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData() {
  $('#user_name').val('');
  $('#user_age').val('');
  $('#user_ph').val('');
  $('#user_email').val('');
}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){
  $('#display_data').html('');
  var name = $('#user_name').val();
  var nameLi = $('<li>').html(name);
  var age = $('#user_age').val();
  var ageLi = $('<li>').html(age);
  var phone = $('#user_ph').val();
  var phoneLi = $('<li>').html(phone)
  var email = $('#user_email').val();
  var emailLI = $('<li>').html(email)
  $('#display_data').append(nameLi, ageLi, phoneLi, emailLI);
  clearData();
}


$(document).ready(function(){
  $('#clear').click(clearData)
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var name = $('#user_name').val();
  var age = $('#user_age').val();
  var phone = $('#user_ph').val();
  var email = $('#user_email').val();
  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
  $('#user_name_error').html('');
  $('#user_age_error').html('');
  $('#user_ph_error').html('');
  $('#user_email_error').html('');

  //set event handler
  $('#add_user_data').submit(function(){
    //Get values from user inputs
    var name = $('#user_name').val();
    var age = $('#user_age').val();
    var phone = $('#user_ph').val();
    var email = $('#user_email').val();
    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(name) && validateAge(age) && validatePhone(phone) && validateEmail(email)) {
      display();
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });

});

