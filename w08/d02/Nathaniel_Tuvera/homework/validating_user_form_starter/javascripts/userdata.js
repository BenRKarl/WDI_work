//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  var nameRegex = /\w{4,}/;
  return name.search(nameRegex) > -1;
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  var ageRegex = /\d{1,3}/;
  return age.search(ageRegex) > -1;
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  var phoneRegex = /^\(?\d{3}\(?[-. ]?\d{3}[\.]\d{4}/;
  return phone.search(phoneRegex) > -1;
}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  var emailRegex = /\w+[@]\w+[.]\+/ix;
  return email.search(emailRegex) > -1;
}

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){};



$(document).ready(function(){
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var nameEl = $('#user_name');
  var ageEl  = $('#user_age');
  var phoneEl= $('#user_ph');
  var emailEl= $('#user_email');
  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
  // $('#user_name_error').hide();
  // $('#user_age_error').hide();
  // $('#user_ph_error').hide();
  // $('#user_email_error').hide();

  //set event handler
  $add_user_data_form.submit(function(){
    //Get values from user inputs
   var $name   = $('#user_name').val();
   var $age    = $('#user_age').val();
   var $phone  = $('#user_ph').val();
   var $email  = $('#user_email').val();

    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName() && validateAge() && validatePhone() && validateEmail()) {
      display();
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });

});

