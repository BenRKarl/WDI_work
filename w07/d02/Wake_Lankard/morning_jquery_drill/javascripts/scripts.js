

$(function(){

  //var userInput = $('.input').val();
  var em = 1;
  $('.input').keyup(function(){
    
    var userInput = $('.input').val();
    userInput = userInput[userInput.length-1];
    $('.output').append(userInput);
    em = em + .5;
    $('.output').css('font-size', em + "em");
  })
})