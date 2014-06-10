


$(function(){
    var $that = this;
    var secDegrees = 0;
    var minDegrees = 0;
    var hourDegrees = 0;
    var date = new Date();
    var secDegrees = 6 * date.getSeconds();
    var minDegrees = 6 * date.getMinutes();
    var hourDegrees = 30 * date.getHours();
    $('.second-hand').css({ WebkitTransform: 'rotate(' + secDegrees + 'deg)'});
    $('.minute-hand').css({ WebkitTransform: 'rotate(' + minDegrees + 'deg)'});
    $('.hour-hand').css({ WebkitTransform: 'rotate(' + hourDegrees + 'deg)'});





  setInterval(function(){
    $('.second-hand').css({ WebkitTransform: 'rotate(' + secDegrees + 'deg)'});
    secDegrees += 6;
  }, 1000);

  setInterval(function(){
    $('.minute-hand').css({ WebkitTransform: 'rotate(' + minDegrees + 'deg)'});
    minDegrees += 6;
  }, 60000);

    setInterval(function(){
    $('.hour-hand').css({ WebkitTransform: 'rotate(' + hourDegrees + 'deg)'});
    hourDegrees += 6;
  }, 360000);


})