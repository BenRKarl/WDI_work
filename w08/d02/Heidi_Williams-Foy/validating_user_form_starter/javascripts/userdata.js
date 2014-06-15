//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  if (name.length >= 3) {
    return true;
  } else {
    $("#user_name_error").show();
    return false;
  }
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  if (isNanN(parseInt(age))) {
    $("#user_age_error").show();
    return false;
  } else {
    return true;
  }
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  var regex = /^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$/;
  if (phone.match(regex) == null) {
    $("#user_ph_error").show();
    return false;
  } else {
    return true;
  }
}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  var regex = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
  if (email.match(regex) == null) {
    $("#user_email_error").show();
    return false;
  } else {
    return true;
  }

}

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){

  $("#display_data").empty();

}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(name, age, ph, email){

  clearData();
  $("#display_data").append($("<li>").html(name));
  $("#display_data").append($("<li>").html(age));
  $("#display_data").append($("<li>").html(ph));
  $("#display_data").append($("<li>").html(email));

}


$(document).ready(function(){
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var $add_user_data_form = $("#add_user_data");
  var user_name = $("#user_name");
  var user_age = $("#user_age");
  var user_ph = $("#user_ph");
  var user_email = $("#user_email");

  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
  $("[id$=error]").hide();

  //set event handler
  $add_user_data_form.submit(function(){
    //Get values from user inputs
    var name = user_name.val();
    var age = user_age.val();
    var ph = user_ph.val();
    var email = user_email.val();

    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(name)  /* && validateAge(age)*/ && validatePhone(ph) && validateEmail(email)) {
      display(name, age, ph, email);
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });

  $("#clear").click(clearData);

});

