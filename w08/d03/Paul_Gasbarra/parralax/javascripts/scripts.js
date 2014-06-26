function fadeBackgroundColor(){

  var scrollTop = $(window).scrollTop();
  console.log('scrollTop: ', scrollTop )

  var documentHeight = $(document).height()
  console.log('documentHeight: ', documentHeight);

  var scrollRatio = scrollTop/documentHeight;

  $('body').css('backgroundColor', 'rgba(200, 200, 255, '+scrollRatio+')');
}

function updateBannerImagePosition(){
  var scrollTop = $(window).scrollTop();
  $('.paraimage').each(function(idx, ele){
    var imageBanner = $(ele).parent();
    var imageStart = imageBanner.position().top;
    var newTop = .9*(scrollTop - imageStart);

    $(ele).css('top', scrollTop)
    })
}

function rotateImage(){
  var scrollTop = $(window).scrollTop();
  $('.information-block').css('transform', 'rotate('+scrollTop/2+'deg)');
}

$(window).on('scroll', function(){
 fadeBackgroundColor();
 updateBannerImagePosition();
 rotateImage();

 var scrollTop = $(window).scrollTop();
 $('.flying-image').css('left', scrollTop);

})

