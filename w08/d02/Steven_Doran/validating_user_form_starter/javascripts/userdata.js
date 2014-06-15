

function validateName(name){
  if (name.search(/\w{3}/) > -1){
    return true;
  } else {
    $('#user_name_error').show();
    return false;
  }
};


function validateAge(age){
  if (age.search(/^[1-9][0-9]?$/) > -1){
    console.log('yay')
    return true;
  } else {
    $('#user_age_error').show();
    return false;
  }
};


function validatePhone(phone){
  if (phone.search(/\(?([0-9]{3})?\)?([ .-]?)([0-9]{3})([ .-]?)([0-9]{4})/) > -1){
    return true;
  } else {
    $('#user_ph_error').show();
    return false;
  }
};


function validateEmail(email){
  if (email.search(/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/)> -1){
    return true;
  } else {
    $('#user_email_error').show();
    return false;
  }
};


function clearData(){

  $('#user_name').val('');
  $('#user_age').val('');
  $('#user_email').val('');
  $('#user_ph').val('');    

};

//Display function blanks out what is currently being displayed in the display_data area then displays the submitted user data as a list
function display(){
  var userName = $('#user_name').val();
  var userAge = $('#user_age').val();
  var userEmail = $('#user_email').val();
  var userPhone = $('#user_ph').val();  

  var nameEl = $('<li>').attr('id', 'name').html(userName);
  var ageEl = $('<li>').attr('id', 'age').html(userAge);
  var emailEl = $('<li>').attr('id', 'email').html(userEmail);
  var phoneEl = $('<li>').attr('id', 'phone').html(userPhone);

  $('#display_data').append(nameEl);
  $('#display_data').append(ageEl);
  $('#display_data').append(emailEl);
  $('#display_data').append(phoneEl);

  $('#user_name').val();
  $('#user_age').val();
  $('#user_email').val();
  $('#user_ph').val();  

};


$(document).ready(function(){


  var userNameError = $('#user_name_error');
  var userAgeError = $('#user_age_error');
  var userEmailError = $('#user_email_error');
  var userPhoneError = $('#user_ph_error');



  userNameError.hide();
  userAgeError.hide();
  userEmailError.hide();
  userPhoneError.hide();


  $(add_user_data).submit(function(e){
    e.preventDefault();

    var userName = $('#user_name').val();
    var userAge = $('#user_age').val();
    var userEmail = $('#user_email').val();
    var userPhone = $('#user_ph').val();

    if(validateName(userName) && validateAge(userAge) && validatePhone(userPhone) && validateEmail(userEmail)) {
      display();
    }
    
  });

  $('#clear_box').click(function(){
    clearData();
  })

});

