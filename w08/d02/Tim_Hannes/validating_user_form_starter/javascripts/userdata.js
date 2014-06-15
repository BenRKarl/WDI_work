
//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  var pattern = /^[a-zA-Z]{3,}$/i;
  pattern.exec(name)
  return true;
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  var pattern = /^[0-9]$/;
  pattern.exec(age)
  return true;
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  var pattern = /\d{3}-\d{3}-\d{4}|\d{10}/;
  pattern.exec(phone)
  return true;
}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  var pattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/i;
  pattern.exec(email)
  return true;
}

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){
    $("#clear").click(function() {
    $("#clear_box").empty();
  })
}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){

}


$(document).ready(function(){

  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
  $('#user_name_error').hide();
  $('#user_age_error').hide();
  $('#user_ph_error').hide();
  $('#user_email_error').hide();

  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var $add_user_data_form = $("#add_user_data");

  //set event handler
  $add_user_data_form.submit(function(e){

    var name = $('#user_name').val();
    var age = $('#user_age').val();
    var phone = $('#user_ph').val();
    var email = $('#user_email').val();

    //Get values from user inputs
    e.preventDefault();
    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(name) && validateAge(age) && validatePhone(phone) && validateEmail(email)) {
      display();
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });

});

