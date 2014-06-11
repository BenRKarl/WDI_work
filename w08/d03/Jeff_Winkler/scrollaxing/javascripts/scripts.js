
// $(function() {
//   $(window).on('scroll', function(){console.log($(window).scrollTop());});
// });

function fadeBackgroundColor() {
  var scrollTop = $(window).scrollTop();
  console.log(scrollTop);

  var documentHeight = $(document).height();
  console.log(documentHeight);

  var scrollRatio = scrollTop/documentHeight;

  $('body').css('backgroundColor', 'rgba(200, 200, 255, '+scrollRatio+')');

}






$(window).on('scroll', function(){
  var scrollTop = $(window).scrollTop();
  fadeBackgroundColor();
  $('#tmt').css('left', scrollTop);




});



