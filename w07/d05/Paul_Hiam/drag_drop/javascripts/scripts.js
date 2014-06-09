$(function(){
var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100').addClass('sheen').addClass('sheen').draggable();

  sheen.appendTo($('#sheen-bin'));

  $('#fade').droppable({
    drop: function(e, dropped){
      dropped.draggable.fadeOut(1000).fadeIn(4000);
      $(this).animate({backgroundColor: 'red'}, 5000);
    }
  })

  $('#shrink').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '-=15px',
        height: '-=15px'
      }, 500)
    }
  })
   $('#grow').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '+=15px',
        height: '+=15px'
      }, 500)
    }
  })
})