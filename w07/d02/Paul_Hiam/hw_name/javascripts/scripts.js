$(function(){
  //on load
  $('#form1').on('submit', function(e){
    var nameText = $('#field');
    var newName = $('<li>').html(nameText.val());
    nameText.val('');
    $('#name_tag').prepend(newName);
    return false;
  });
})