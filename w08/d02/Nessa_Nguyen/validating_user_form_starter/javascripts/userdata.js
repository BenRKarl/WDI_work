function validateName(name){
  if (name.length < 3) {
    $('#user_name_error').show();
    return false;   
  } else {
    $('#user_name_error').hide();
    return true;
  }
}

function validateAge(age){
  if (age.match(/[0-9]+[^a-zA-Z]/) == null){
    $('#user_age_error').show();
    return false; 
  } else {
    $('#user_age_error').show();
    return true;
  }
}

function validatePhone(phone){
  if (phone.match(/[0-9]{3}[ -]?[0-9]{3}[ -]?[0-9]{4}/) == null){
    $('#user_ph_error').show();
    return false;    
  } else {
    $('#user_ph_error').show();
    return true;
  }
}
  
function validateEmail(email){
  if (email.match(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/) == null){ 
    $('#user_email_error').show();
    return false;     
  } else {
    $('#user_email_error').hide();
    return true;   
  }
}  

function clearData(){
  $('#display_data').empty();
}

function display(){
  var array = [$('#user_name'), $('#user_age'), $('#user_ph'), $('#user_email')]
  $.each(array, function(idx, item){
    var newLi = $('<li>').append(item.val());
    $('#display_data').append(newLi);
  })

  $('#user_name').val('');
  $('#user_age').val('');
  $('#user_ph').val('');
  $('#user_email').val('');  
}


$(document).ready(function(){

  $('span').hide(); // hide all errors

  $('#add_user_data').on('submit', function(e){
    e.preventDefault();
    var username = $('#user_name').val();
    var age      = $('#user_age').val();
    var phone    = $('#user_ph').val();
    var email    = $('#user_email').val();    

    if( validateName(username) && validateAge(age) && validatePhone(phone) && validateEmail(email) ){
      display();
      $('span').hide();
    }
  });

  $('#clear').on('click', function(){
    clearData();
  })

});

