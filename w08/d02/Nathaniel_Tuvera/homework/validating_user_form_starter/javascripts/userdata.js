//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  var nameRegex = /\w{4,}/;
  if ( name.search(nameRegex) > -1){
    return true
  }else{
    $('#user_name_error').show();
    return false;
  }
};
// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  var ageRegex = /[0-9][0-9]/;
  if (age.search(ageRegex) > -1){
    return true;
  }else{
    $('#user_age_error').show();
    return false;
  }
};
// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  var phoneRegex = /\(?\d{3}\)?[-. ]?\d{3}[-. ]?\d{4}/;
  if (phone.search(phoneRegex) > -1){
    return true;

  }else{
    $('#user_ph_error').show();
    return false;
  }
}
// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  var emailRegex = /\w+[@]\w+[.]\w+/;
  if (email.search(emailRegex) > -1){
    return true;
  }else{
    $('#user_email_error').show();
    return false;
  }
}
//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){
  $('#display_data').html('');
}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){
  var userName = $('#user_name').val();
  var userAge = $('#user_age').val();
  var userPhone = $('#user_ph').val();
  var userEmail = $('#user_email').val();

  var nameEl = $('<li>').html(userName);
  var ageEl = $('<li>').html(userAge);
  var phoneEl = $('<li>').html(userPhone);
  var emailEl = $('<li>').html(userEmail);

  $('#display_data').append(nameEl);
  $('#display_data').append(ageEl);
  $('#display_data').append(phoneEl);
  $('#display_data').append(emailEl);

}


// var $add_user_data_form = document.querySelector('#add_user_data');

$(document).ready(function(){

  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var nameErr = $('#user_name_error');
  var ageErr  = $('#user_age_error');
  var phoneErr= $('#user_ph_error');
  var emailErr= $('#user_email_error');
  $add_user_data_form = $('#add_user_data');

  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
  nameErr.hide();
  ageErr.hide();
  phoneErr.hide();
  emailErr.hide();
  //set event handler
  $(add_user_data).submit(function(e){
      e.preventDefault();
    //Get values from user inputs
    var userName  = $('#user_name').val();
    var userAge   = $('#user_age').val();
    var userPhone = $('#user_ph').val();
    var userEmail = $('#user_email').val();
    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(userName) && validateAge(userAge) && validatePhone(userPhone) && validateEmail(userEmail)) {
      display();
    }

  });

  // $('#clear').onclick=function(){
  //   clearData();
  // };
});

