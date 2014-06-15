//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  result = name.search(/\S\S\S/) > -1;
  if (result == false) {$('#user_name_error').show()}
  if (result == true) {$('#user_name_error').hide()}
  return result
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  result = age.search(/^\d+$/) > -1;
  if (result == false) {$('#user_age_error').show()}
  if (result == true) {$('#user_age_error').hide()}
  return result
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  result = phone.search(/^\d{3}[-]\d{3}[-]\d{4}$/) > -1;
  if (result == false) {$('#user_ph_error').show()}
  if (result == true) {$('#user_ph_error').hide()}
  return result
}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  result = email.search(/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/) > -1;
  if (result == false) {$('#user_email_error').show()}
  if (result == true) {$('#user_email_error').hide()}
  return result
}

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){
  $('#display_data').html('')
}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(name, age, phone, email){
  $('#display_data').append($('<li>').html('Name: ' + name + ' Age: ' + age + ' Email: ' + email + ' Phone: ' + phone))
}


$(document).ready(function(){
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var $userName = $('#user_name')
  var $userAge = $('#user_age')
  var $userPh = $('#user_ph')
  var $userEmail = $('#user_email')
  var $add_user_data_form = $('#add_user_data')
  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
  $('#user_name_error').hide()
  $('#user_age_error').hide()
  $('#user_ph_error').hide()
  $('#user_email_error').hide()

  //set event handler
  $add_user_data_form.submit(function(){
    //Get values from user inputs
    var name = $userName.val()
    var age = $userAge.val()
    var phone = $userPh.val()
    var email = $userEmail.val()
    validateName(name)
    validateAge(age)
    validatePhone(phone)
    validateEmail(email)
    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(name) && validateAge(age) && validatePhone(phone) && validateEmail(email)) {
      display(name, age, phone, email);
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });

  $('#clear').on('click', function(){
    clearData()
  })

});

