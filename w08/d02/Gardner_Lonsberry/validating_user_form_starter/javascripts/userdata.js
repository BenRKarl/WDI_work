//Validate the Name. It should return true if the name is greater than or equal 3 characters. If not, it should show the error and return false.
function validateName(name){
  if ( name.length >= 3 ) {
    alert('true');
  }
}

// Validate the Age. It should return true if the age is a number. If not, it should show the error and return false.
// function validateAge(age){
//   if parseInt(age > 0) {
//     alert('age is good');
//   } else if {
//   age != 
//   }
  
// }

// Validate the Phone Number. It should return true if the phone number matches the regular expression. If not, it should show the error and return false.
function validatePhone(phone){

}

// Validate the Email. It should return true if the email matches the regular expression. If not, it should show the error and return false.
// function validateEmail(email){
// [\w+]+@\w+\.com?
// }

//Write a function so that when the clear button is clicked, any data being displayed is erased.
function clearData(){

}

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){

}


$(document).ready(function(){
  $add_user_data_form = $('#add_user_data')


  //Store the appropriate items you will be selecting from the DOM into variables for easy usage



$('#user_email_error').hide()  // Initially hide the errors.  Check the HTML to see how to select all the items that are error messages.
$('#user_name_error').hide()
$('#user_age_error').hide()
$('#user_ph_error').hide()
  //set event handler
  $add_user_data_form.submit(function(){
    //Get values from user inputs
var user_name = $('#user_name').val();
var user_age = $('#user_age').val();
var user_ph = $('#user_ph').val();
var user_email = $('#user_email').val();
// $('#user_name').attr('#user_name');
// $('user_name').html(value);
// $("#user_name").keyup(function(){


// $(".submit").on("click", function(){

// })

//     drop: function(e, dropped){
//       admireKitten(dropped.draggable.attr('src'));
//     },
//     hoverClass: "drop-hover"
//   })
    // If all of the items validate, you should update the name, age, phone and email of the user and display it
    debugger;
    if(validateName() && validateAge() && validatePhone() && validateEmail()) {
      display();
    }
    return false; //This stops the form from processing (page reload). An alternative to preventDefault();
  });
});

