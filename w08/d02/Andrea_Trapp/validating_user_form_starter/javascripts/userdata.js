//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){  
  if (name.length < 3) {    
    $userNameError.show();
    $userNameSuccess.hide();
    return false;
  }   
  $userNameError.hide();
  $userNameSuccess.show();
  return true;  
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
    if (!age.match(/^\d+$/)) {    
    $userAgeError.show();
    $userAgeSuccess.hide();
    return false;
  }  
  $userAgeError.hide();
  $userAgeSuccess.show();
  return true;  
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
    if (!phone.match(/^\d{3}-\d{3}-\d{4}$/)) {    
    $userPhoneError.show();  
    $userPhoneSuccess.hide(); 
    return false;
  }  
  $userPhoneError.hide();
  $userPhoneSuccess.show();
  return true;  
}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
    if (!email.match(/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i)) {    
    $userEmailError.show();
    $userEmailSuccess.hide();
    return false;
  }  
  $userEmailError.hide();
  $userEmailSuccess.show();
  return true;  
}


//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){  
  $displayData.empty();

  $userName.val("");
  $userAge.val("");
  $userPhone.val("");
  $userEmail.val("");

  $userNameSuccess.hide();  
  $userAgeSuccess.hide();  
  $userPhoneSuccess.hide(); 
  $userEmailSuccess.hide();
}
   

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){

  var $li = $('<li>');
  $displayData.append($li.html($userName.val()));
  var $li = $('<li>');
  $displayData.append($li.html($userAge.val()));
  var $li = $('<li>');
  $displayData.append($li.html($userPhone.val()));
  var $li = $('<li>');
  $displayData.append($li.html($userEmail.val()));
}


$(document).ready(function(){
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage

  var $add_user_data_form = $('#add_user_data');
  
  $userName = $('#user_name');
  $userNameError = $('#user_name_error');
  $userNameSuccess = $('#user_name_success');

  $userAge = $('#user_age');
  $userAgeError = $('#user_age_error');
  $userAgeSuccess = $('#user_age_success');

  $userPhone = $('#user_ph');
  $userPhoneError = $('#user_ph_error');
  $userPhoneSuccess = $('#user_ph_success');

  $userEmail = $('#user_email');
  $userEmailError = $('#user_email_error');  
  $userEmailSuccess = $('#user_email_success');  

  $displayData = $('#display_data');

  $clear = $('#clear');


  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.

  $userNameError.hide();
  $userNameSuccess.hide();
  $userAgeError.hide();
  $userAgeSuccess.hide();
  $userPhoneError.hide();
  $userPhoneSuccess.hide();
  $userEmailError.hide();
  $userEmailSuccess.hide();


  //set event handler
  $add_user_data_form.submit(function(){
    //Get values from user inputs
   
    var name = $userName.val();
    var age = $userAge.val();
    var phone = $userPhone.val();
    var email = $userEmail.val();  

    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(name) && validateAge(age) && validatePhone(phone) && validateEmail(email)) {
      display();
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });

  $clear.click(function(){
    clearData();
  });

});

