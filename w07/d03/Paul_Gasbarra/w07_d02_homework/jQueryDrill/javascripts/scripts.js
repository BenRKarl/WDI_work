var placeName = function(name){
  var el = document.createElement('li');
  el.innerHTML = name;
  $(".nameList").append(el);

}



$(function(){
  $('.submitName').on('click', function(){
    var text = $('.nameField').val();
    placeName(text);
    $('.nameField').val('')

  })
})
