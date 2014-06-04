




$(function() {
  console.log("Ready to go")
  $('.inputField').on('keyup', function(){
    $('.output').html($('.inputField').val()).css("fontSize", $('.inputField').val().length*4)
    // var text = ($(this).val());
  })
}
)
