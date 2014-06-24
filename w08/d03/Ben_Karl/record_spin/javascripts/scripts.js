$(window).on('scroll', function(){
  var scrollTop = $(window).scrollTop();
  console.log(scrollTop);
  var d = $(window).scrollTop()/$(document).height()*360;

  $('.record').css({ 'transform': 'rotate('+d+'deg)', 'top': scrollTop });
})
