function randomColor() {
  var maxColor = 16777215;
  var hexColor = Math.floor(Math.random() * maxColor).toString(16);
  return "#" + hexColor;
}

function letThereBeLove(numHearts) {

  for (var i = 0; i < numHearts; i++) {
    var newHeart = $("<h1 class='hearts'>I &hearts; NYC</h1>");
    $("body").append(newHeart);
  };

  $(".hearts").each(function(id, el) {
    // $(".hearts").css("color", randomColor();
    $(el).animate({
      top: ((Math.random() * 200) - 50) + "%",
      left: ((Math.random() * 200) - 50) + "%",
      // color: randomColor(),
      opacity: 0
    }, 2000, "linear", function() {
      $(this).remove();
    });
  });
}

$(function() {
  setInterval(function() {
    letThereBeLove(10);
  }, 500)
})