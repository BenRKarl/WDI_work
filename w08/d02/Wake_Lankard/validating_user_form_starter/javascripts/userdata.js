


//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  if (name.length >= 3){
    return true;  
  }
  else
  {
    $('#user_name_error').css('display', 'inline');
    return false;
  }
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  if(age.match(/\D/) != null){
    $('#user_age_error').css('display', 'inline');
    return false;
  }
  else
  {
  
    return true;
  }
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  var regex = /\(?\d{3}\)?[-. ]?\d{3}[-.]?\d{4}/;
  if(phone.match(regex) == null){
    $('#user_ph_error').css('display', 'inline');
    return false;
  }
  else
  {
    return true;
  }
}



// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  var regex = /.*@.*/;
  if(email.match(regex) == null){
    $('#user_email_error').css('display', 'inline');
    return false;
  }
  else
  {
    return true;
  }
}

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){
  $('#display_data').html("");
}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(name, age, phone, email){

$('#display_data').html("");
var nameElem = $('<li>').html(name);
$('#display_data').append(nameElem);
var ageElem = $('<li>').html(age);
$('#display_data').append(ageElem);
var phoneElem = $('<li>').html(phone);
$('#display_data').append(phoneElem);
var emailElem = $('<li>').html(email);
$('#display_data').append(emailElem);

 $('.error').css("display","none");
}


$(document).ready(function(){
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage
  var name = undefined;
  var age = undefined;
  var phone = undefined;
  var email = undefined;
  $add_user_data_form = $('#add_user_data');
  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.


  //set event handler
  $add_user_data_form.submit(function(){
    //Get values from user inputs

    name = $('#user_name').val();
    age = $('#user_age').val();
    phone = $('#user_ph').val();
    email = $('#user_email').val();
  

    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(name) && validateAge(age) && validatePhone(phone) && validateEmail(email)) {
      display(name, age, phone, email);
     
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });
  $('#clear').click(function(){
    clearData();
  });

});

