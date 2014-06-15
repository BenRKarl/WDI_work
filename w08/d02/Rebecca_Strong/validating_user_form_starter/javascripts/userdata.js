//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){

var name = /^\w{3,}/;
return name.match(nameRegex) !== null;
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){

  var age = /^\d+/;
  return age.match(ageRegex) !== null;
}

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){

   var phoneRegex =  /^\D*(\d{3})\D*(\d{3})\D*(\d{4})\D*(\d*)$/xi/;
    return phone.match(phoneRegex) !== null;
}


// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){
  var emailRegex =  /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
    return email.match(emailRegex) !== null;
}

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){


  $('.data-form').on('clear', function(e){
    e.preventDefault();
    var newData = $('.data-form input[data="data"]').val();


})
}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){}


$(document).ready(function(){
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage

  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.


  //set event handler
  $add_user_data_form.submit(function(){
    //Get values from user inputs

    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName() && validateAge() && validatePhone() && validateEmail()) {
      display();
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });

});

