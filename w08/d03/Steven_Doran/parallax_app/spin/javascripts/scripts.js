$(window).on('scroll', function(){
   var d = $(window).scrollTop()/$(document).height() * 360;

   var scrollTop = $(window).scrollTop();

   $('.record').css({
      'transform': 'rotate('+d+'deg)','top': scrollTop})
})