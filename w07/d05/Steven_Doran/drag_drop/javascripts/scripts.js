$(function() {
   var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100').addClass('sheen').draggable();
   sheen.appendTo($("#sheen-bin")).hide().fadeIn(3000);

   $('#fade').droppable({
      drop: function(e, dropped) {
         $(this).animate({backgroundColor: 'red'}, 100).animate({backgroundColor: 'blue'}, 500);
         dropped.draggable.fadeOut(2000);
      }
   });

   $('#shrink').droppable({
      drop: function(e, dropped){
         $(dropped.draggable).animate({
            width: '-=15px',
            height: '-=15px'
         }, 1000)
      }
   })

      $('#embiggen').droppable({
      drop: function(e, dropped){
         $(dropped.draggable).animate({
            width: '+=15px',
            height: '+=15px'
         }, 1000)
      }
   })

});