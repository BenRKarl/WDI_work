//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  if (name.length < 3) {
    $('#user_name_error').show();
    return false
  } 
  else {
    $('user_name_error').hide();
    return true;
  }
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  if (age.match(/[0-9]+[^a-zA-Z]/) == null){
    $('#user_age_error').show();
     return false; 
  } else {
     $('#user_age_error').hide();
     return true;
  }
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  function validatePhone(phone){
    if (phone.match(/[0-9]{3}[ |-]?[0-9]{3}[ |-]?[0-9]{4}/) == null){
     $('#user_ph_error').show();
     return false;    
    } else {
     $('#user_ph_error').show();
     return true;
    }
}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  if (email.match(/^([\w].+@([\w]+\.)+[\w]{2,5})?$/) == null){ 
   $('#user_email_error').show();
   return false;     
  } else {
   $('#user_email_error').hide();
   return true;   
  }
}

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){
  $('#display_data').empty();
}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){
  $('#user_name').val('');
  $('#user_age').val('');
  $('#user_ph').val('');
  $('#user_email').val('');
}


$(document).ready(function(){
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var $nameErr = $('#user_name_error')
  var $age = $('#user_age_error')
  var $phoneErr = $('#user_ph_error')
  var $emailErr = $('#user_email_error')


  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
  $('span').hide();


  //set event handler
  $add_user_data_form.submit(function(){
    //Get values from user inputs
    var name = $('user-name').val();
    var age = $('user-age').val();
    var phone = $('user-ph').val();
    var email = $('user-email').val();
    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName() && validateAge() && validatePhone() && validateEmail()) {
      display();
      $('span').hide();
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });
  $('#clear').on('click', function(){
    clearData();
  })

});

