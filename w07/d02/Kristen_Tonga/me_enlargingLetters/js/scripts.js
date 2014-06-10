$(function(){
  console.log('Look. You got this.')
})


$(function(){

  $('.user-entry').on('keyup', function(){
    var entry = ($(this).val());
    $('h1').text(entry).css('font-size', (entry.length+8) + 'px');
  })

})
