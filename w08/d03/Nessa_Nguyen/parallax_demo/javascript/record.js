$(window).on('scroll', function(){
  var scrollTop = $(window).scrollTop();
  var d = scrollTop / $(document).height() * 360;
  $('.record').css('top', scrollTop);
  $('.label').css({
    'transform': 'rotate('+d+'deg)'
  })
})
