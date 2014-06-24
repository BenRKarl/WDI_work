

function fadeBackgroundColor(){
  var scrollTop = $(window).scrollTop()
  console.log("scrollTop: ", scrollTop)
  var documentHeight = $(document).height()

  console.log("documentHeight: ", documentHeight)
  var scrollRatio = scrollTop / documentHeight

  console.log('scrollRatio: ', scrollRatio)
  $('body').css('backgroundColor', 'rgba(200, 200, 255, ' + scrollRatio + ')');
}

function updateBannerImagePosition(){
  var scrollTop = $(window).scrollTop()
  $('.para-image').each(function(index, element){
    var imageBanner = $(element).parent();
    var imageStart = imageBanner.position().top;
    var newTop = scrollTop - imageStart;
    $(element).css('top', .9 * newTop)
  })
}

function spinImage(){
  var scrollTop = $(window).scrollTop()
  var rotate = 'rotate('+ scrollTop + 'deg)'
  console.log(rotate)
  $('.ball').css('transform', 'rotate('+ scrollTop + 'deg)')
}



$(window).on('scroll', function(){
  fadeBackgroundColor();
  var scrollTop = $(window).scrollTop()
  var documentHeight = $(document).height()
  var scrollRatio = scrollTop / documentHeight
  var windowHeight = $(window).height()
  var documentRatio = scrollRatio*windowHeight
  $('.flying-image').css('left', scrollTop )

  updateBannerImagePosition()
  spinImage()
 })
