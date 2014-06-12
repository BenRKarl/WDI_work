//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  var regex = /[a-zA-Z]*/;
  if (name == name.match(regex)) {
    if (name.length >= 3) {
      $('#user_name_error').hide();
      return true;
    } else {
      $('#user_name_error').show();
      return false;
    }
  } else {
    $('#user_name_error').show();
    return false;
  }

}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  if ($.isNumeric(age) == true && age >= 0) {
    $('#user_age_error').hide();
    return true;
  } else {
    $('#user_age_error').show();
    return false;
  }
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  var regex = /\d{3}-\d{3}-\d{4}/
  console.log(phone.match(regex));
  if (phone == phone.match(regex)) {
    $('#user_ph_error').hide();
    return true;
  } else {
    $('#user_ph_error').show();
    return false;
  }
}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  var regex = /^\w+@\w+.com?$/
  if (email = email.match(regex)) {
    $('#user_email_error').hide();
    return true;
  } else {
    $('#user_email_error').show();
    return false;
  }
}

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){
    $userName.val('');
    $userAge.val('');
    $userPhone.val('');
    $userEmail.val('');
    $('span').hide();
}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){
  newLi = $('<li>')
  $(newLi).html(userName);
  $('#display_data').append(newLi);
  newLi = $('<li>')
  $(newLi).html(userAge);
  $('#display_data').append(newLi);
  newLi = $('<li>')
  $(newLi).html(userPhone);
  $('#display_data').append(newLi);
  newLi = $('<li>')
  $(newLi).html(userEmail);
  $('#display_data').append(newLi);
  clearData();
}


$(document).ready(function(){
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
    $userName = $('#user_name');
    $userAge = $('#user_age');
    $userPhone = $('#user_ph');
    $userEmail = $('#user_email');

  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
    $('span').hide();

  //set event handler
  $('#add_user_data').submit(function(e){
    e.preventDefault();
    //Get values from user inputs
    userName = $userName.val();
    userAge = $userAge.val();
    userPhone = $userPhone.val();
    userEmail = $userEmail.val();

    console.log(validateName(userName));
    console.log(validateAge(userAge));
    console.log(validatePhone(userPhone));
    console.log(validateEmail(userEmail));


    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(userName) && validateAge(userAge) && validatePhone(userPhone) && validateEmail(userEmail)) {
      display();
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });
  $('#clear').click(function(){
    clearData();
  });


});

