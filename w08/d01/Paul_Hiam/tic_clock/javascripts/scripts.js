

$(function(){  

  setInterval( function(){
    var time = new Date();
    var seconds = time.getSeconds();
    var sVal = seconds * 6;
    var sHand = "rotate(" + sVal + "deg)";

    $("#sec").css({"-webkit-transform": sHand }).css("-webkit-transform-origin", "bottom");
  }, 1000);

  setInterval( function(){
    var time = new Date();
    var hours = time.getHours();
    var hVal = hours * 30;
    var hHand = "rotate(" + hVal + "deg)";

    $("#hour").css({"-webkit-transform": hHand }).css("-webkit-transform-origin", "bottom");
  }, 1000);

  setInterval( function(){
    var time = new Date();
    var min = time.getMinutes();
    var mVal = min * 6;
    var mHand = "rotate(" + mVal + "deg)";

    $("#min").css({"-webkit-transform": mHand }).css("-webkit-transform-origin", "bottom");
  }, 1000);

});

