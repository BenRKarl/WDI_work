$(window).on ('scroll', function() {
  var scrollTop = $(window).scrollTop();
  var height = $(window).height();
  var d = scrollTop/height * 360;
  $('.record').css('transform', 'rotate('+d+'deg)')
})
