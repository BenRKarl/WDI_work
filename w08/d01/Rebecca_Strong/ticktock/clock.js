$(function(){


var count = 1;

  var intervalID = window.setInterval(function () {


  console.log(count);

$('#second-hand').css( "transform", "rotate("+count * 6+"deg)" );

if(count===59) {
  count = 0;
} else {
  count++;
}


   }, 1000);
// })

$('#minute-hand').css( "transform", "rotate("+count * 6+"deg)" );

if(count===59) {
  count = 1;
} else {
  count++;
}


   }, 6000);

// })

$('#hour-hand').css( "transform", "rotate("+count * 30+"deg)" );

if(count===11) {
  count = 0;
} else {
  count++;
}


   }, 360000);

});
