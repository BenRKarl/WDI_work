$(function(){
  //on load
  $('#form1').on('submit', function(e){
    var nameText = $('#field');
    var newOne = new oneLove (nameText);

    nameText.val('');
    $('#name_tag').prepend(newOne.el);
    return false;
  });
})

function oneLove(name){
  this.el = $('<li>').html(name.val())
}