$(function(){
  console.log("Just as long as I know how to love...");
})

function fadeBackgroundColor(){
  var scrollTop = $(window).scrollTop();
  console.log('scrollTop: ', scrollTop);
  var documentHeight = $(document).height();
  console.log('documentHeight: ', documentHeight);
  var scrollRatio = scrollTop/documentHeight;
  $('body').css('backgroundColor', 'rgba(200, 200, 255, '+ scrollRatio +')');
}

function updateBannerImagePosition(){
  var scrollTop = $(window).scrollTop();
  $('.para-image').each(function(idx, ele){
    // $(ele).css('top', .2*scrollTop)
    var imageBanner = $(ele).parent();
    var imageStart = imageBanner.position().top;
    var newTop = .9*(scrollTop - imageStart);

    $(ele).css('top', newTop)
  })
}

function rotate(){
  var d = $(window).scrollTop()/$(document).height()*360;
  $(".record").css({
    'trasform': 'rotate('+d+'deg)'
  });
}

$(window).on('scroll', function(){
  fadeBackgroundColor();
  var scrollTop = $(window).scrollTop();
  // if(scrollTop<100) // just to move somewhat
  $('.flying-image').css('left', scrollTop);
  updateBannerImagePosition();
})

