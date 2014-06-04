console.log('This works')

$(function(){
  $('#input-field').on('keyup', function(){
    var text = ($(this).val());
    $('h1').text(text);
    $('h1').css('font-size', ($('h1').text().length)+"px"
    );
  });
})
