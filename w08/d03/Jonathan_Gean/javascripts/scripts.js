function fadeBackgroundColor(){
  var scrollTop = $(window).scrollTop();
  console.log(scrollTop)

  var documentHeight = $(document).height()
  console.log('documentHeight: ', documentHeight)

  var scrollRatio =  scrollTop / documentHeight

  $('body').css('backgroundColor', 'rgba(30, 10, 30, '+ scrollRatio +')')
}

function updateBannerImagePosition(){
    var scrollTop = $(window).scrollTop();
  $('.para-image').each(function(idx, ele){
    var imageBanner = $(ele).parent();
    var imageStart = imageBanner.position().top;
    var newTop = .75*(scrollTop - imageStart)
    $(ele).css('top', newTop)
  })
}

$(window).on('scroll', function(){
  fadeBackgroundColor();
  updateBannerImagePosition();
  var scrollTop = $(window).scrollTop();
  $('.flying-image').css('right', scrollTop);
})
