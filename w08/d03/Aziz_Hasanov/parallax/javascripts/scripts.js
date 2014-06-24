function fadeBackgroundColor() {
  var scrollTop = $(window).scrollTop();
  // console.log("scrollTop: ", scrollTop);

  var documentHeight = $(document).height();
  // console.log("documentHeight: ", documentHeight);

  var scrollRatio = scrollTop/documentHeight;

  $("body").css("backgroundColor", "rgba(100, 200, 255, "+ scrollRatio * 2 +")");
}


function updatePosition() {
  var scrollTop = $(window).scrollTop();
  $(".cars").each(function(idx, elem) {
    var imageBanner = $(elem).parent();
    var imageStart = imageBanner.position().top;
    var newTop = (scrollTop - imageStart) * .75;
    $(elem).css("top", newTop);
  })
}

$(window).on("scroll", function() {
  fadeBackgroundColor();
  updatePosition();

  var scrollTop = $(window).scrollTop();
  $(".head").css("left", scrollTop);
  $("h1").css("right", scrollTop);
})