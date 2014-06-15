//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
 var nameRegex = /^[A-Za-z0-9 ]{3,}$/
    return name.search(nameRegex) > -1;}
  // else
  //   {return false;
  //   $("#user_name_error").show();}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
function validateAge(age){
  var ageRegex = /^[0-9]{1,}$/
    return age.search(ageRegex) > -1;}
//   else
//     {return false;
//     $("#user_age_error").show();}

// }

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){
  var phoneRegex = /^[0-9]{3}(-)[0-9]{3}(-)[0-9]{4}$/
    return phone.search(phoneRegex) > -1;}
//   else
//     {return false;
//     $("#user_ph_error").show();}

// }

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
function validateEmail(email){

   var emailRegex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
    return phone.search(phoneRegex) > -1;}
//   else
//     {return false;
//     $("#user_email_error").show();}

// }

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){
  $("#display_data").empty()
}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(input_name, input_age, input_ph, input_email){
  clearData();
  $("#display_data").append("<li>"+input_name+"</li>");
  $("#display_data").append("<li>"+input_age+"</li>");
  $("#display_data").append("<li>"+input_ph+"</li>");
  $("#display_data").append("<li>"+input_email+"</li>");

}


$(document).ready(function(){
  //Store the appropriate items you will be selecting from the DOM into variables for easy usage

  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
  $("#user_name_error").hide();
  $("#user_age_error").hide();
  $("#user_ph_error").hide();
  $("#user_email_error").hide();

  //set event handler
    $("#add_user_data").submit(function(){
    //Get values from user inputs
    // e.preventDefault();
    var input_name = $("#user_name").val();
    var input_age = $("#user_age").val();
    var input_ph = $("#user_ph").val();
    var input_email = $("#user_email").val();


    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    if(validateName(input_name) && validateAge(input_age) && validatePhone(input_ph) && validateEmail(input_email)) {

      display(input_name, input_age, input_age, input_email);

     }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });

});

