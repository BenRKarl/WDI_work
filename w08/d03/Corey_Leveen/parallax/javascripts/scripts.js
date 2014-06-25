function fadeBackgroundColor() {
  var scrollTop = $(window).scrollTop();
  console.log('scrollTop:', scrollTop);

  var docHeight = $(document).height();
  console.log('documentHeight:', docHeight);

  scrollRatio = scrollTop/docHeight;
  $('body').css('backgroundColor', 'rgba(200, 200, 255, '+ scrollRatio+')');
  console.log('scrollRatio:', scrollRatio);
}



function updateBannerImagePosition(){
  var scrollTop = $(window).scrollTop();
  $('.other').each(function(idx, ele){

    var imageBanner = $(ele).parent();
    var imageStart = imageBanner.position().top;
    var newTop = .7*(scrollTop - imageStart);
    $(ele).css('top', newTop)
  })
}




$(window).on('scroll', function() {
  fadeBackgroundColor();

  updateBannerImagePosition();

  var scrollTop = $(window).scrollTop();

})
