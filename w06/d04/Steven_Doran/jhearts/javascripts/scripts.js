function randomColor(){
 var maxColor = 16777215;
 var hexColor = Math.floor(Math.random() * maxColor).toString(16);
 return "#" + hexColor;
}

function letThereBeLove(numHearts){

   for (var i = 0; i < numHearts; i++) {
      var newHeart = $("<h1 class='hearts'>&#9734;</h1>");
      $('body').append(newHeart);
   };

   $('.hearts').each(function(idx, el){
      $(el).animate({
         top: ((Math.random()*200) - 50) + '%',
         left: ((Math.random()*200) - 50) + '%',
         opacity: 0
      }, 2000, 'linear', function(){$(this).remove();}
      );
   });

   $('#disco-button').on('click', function(){
     var handle = setInterval(function(){
      $('body').css('backgroundColor', randomColor())
   }, 50);
     var makeItStop = $('<button>');
  });
   
}

$(function(){

   setInterval(function(){
      letThereBeLove(5);
   }, 125);

})


