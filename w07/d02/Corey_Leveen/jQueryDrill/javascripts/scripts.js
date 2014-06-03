$(function(){
    var i = 0;
    $('#input').keyup(function(){
    var input = $('#input').val();
    $('#main-div').html(input).css("font-size", i);
    i += 3;
  })
})
