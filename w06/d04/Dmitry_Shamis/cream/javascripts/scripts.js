function letThereBeDollars(numDollars) {
  for (var i = 0; i < numDollars; i++) {
    var newDollar = $("<h1 class='dollars'>$</h1>");
    $('body').append(newDollar);
  };

  $('.dollars').each(function (idx, el) {

    $(el).animate({
      top: ((Math.random()*200) - 50) + '%',
      left: ((Math.random() * 200) - 50) + '%',
      opacity: 0
    }, 2000, 'linear', function() {
      $(this).remove();
    });
  });
}

$(function() {
  setInterval(function () {
    letThereBeDollars(3);
  }, 75)

})
