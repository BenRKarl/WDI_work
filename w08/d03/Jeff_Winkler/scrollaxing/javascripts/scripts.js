
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


function updateBannerImage() {
  $('.zpic').each(function(index, value){
    var scrollTop = $(window).scrollTop();
    $(value).css('top', scrollTop);

  });
}



$(window).on('scroll', function(){
  var scrollTop = $(window).scrollTop();
  fadeBackgroundColor();
  $('#tmt').css('left', scrollTop);
  updateBannerImage();

  var d = $(window).scrollTop() / $(document).height() * 360;
  $('.record').css({
    '-webkit-transform': 'rotate('+d+'deg)'
  });




});



