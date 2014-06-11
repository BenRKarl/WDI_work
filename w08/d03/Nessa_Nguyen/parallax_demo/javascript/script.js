function fadeBgcolor(){
  var scrollTop = $(window).scrollTop();
  console.log(scrollTop);
  var docHeight = $(document).height();
  console.log(docHeight);

  var scollRatio = scrollTop / docHeight;
  $(document.body).css('background-color', 'rgba(200, 200, 255,'+scollRatio+')');  
}

function moveImage(){
  var scrollTop = $(window).scrollTop();
  $('.banner img').each(function(idx, ele){
    //$(ele).css('bottom', scrollTop * .4);
    var banner = $(ele).parent();
    var imageStart = banner.position().top;
    var newTop = scrollTop - imageStart;   
    $(ele).css('top', newTop); 
  })
}

$(window).on('scroll', function() {
  fadeBgcolor();
  var scrollTop = $(window).scrollTop();
  $('.flying').css({'left': scrollTop});
  moveImage();
})
