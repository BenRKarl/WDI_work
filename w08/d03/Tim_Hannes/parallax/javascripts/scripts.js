console.log("Hello, user!")

function fadeBackgroundColor(){
  var scrollTop = $(window).scrollTop();
  console.log('scrollTop: ', scrollTop)
  var documentHeight = $(document).height();
  console.log('documentHeight: ', documentHeight)
  var scrollRatio = scrollTop / documentHeight;
  $('body').css('backgroundColor', 'rgba(55, 300, 0, '+ scrollRatio +')')
}

function updateBannerImagePosition(){
  $('.para-image').each(function(idx, ele){
    var imageBanner = $(ele).parent();
    var imageStart = imageBanner.position().top;
    var newTop = .9*(scrollTop - imageStart);

    $(ele).css('top', newTop)
  })
}


$(window).on('scroll', function(){

  fadeBackgroundColor();

  updateBannerImagePosition();

  var scrollTop = $(window).scrollTop();

  $('.flying-image').css('left', scrollTop);
})
