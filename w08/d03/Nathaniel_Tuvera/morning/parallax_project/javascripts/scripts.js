function fadeBackgroundColor(){
  var scrollTop = $(window).scrollTop();
  console.log('scrollTop: ', scrollTop)
  var documentHeight = $(document).height();
  console.log('documentHeight: ', documentHeight);
  var scrollRatio = scrollTop / documentHeight;
  $('body').css('backgroundColor', 'rgba(200,200,255,'+ scrollRatio+')');
}

function updateBannerImagePosition(){

  var scrollTop = $(window).scrollTop();
  $('.para-image').each(function(idx, ele){

    var imageBanner = $(ele).parent();
    var imageStart  = imageBanner.position().top;
    var newTop      = scrollTop - imageStart

    $(ele).css('top', .9*newTop)
  })
}

function rotateHead(){
  var scrollTop = $(window).scrollTop();
  // var d = $(window).scrollTop/$(window).height();
  var d = $(window).height()/scrollTop;
  $('#head').css('transform', 'rotate('+d+'deg)');
}


$(window).on('scroll', function(){

  // fadeBackgroundColor();

  // updateBannerImagePosition();

  rotateHead();
  var scrollTop = $(window).scrollTop();
  if(scrollTop <100){
    $('#head').css('left', scrollTop);
  }
  // var d = $(window).scrollTop/$(window).height() * 360;
  // $('#head').css({'transform': 'rotate('+d+'deg)'});
})
