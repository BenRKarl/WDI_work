$(function(){
  var sheen = $('<img>').attr('src', 'http://placesheen.com/150/150')
      .addClass('sheen')
      .draggable();

  // $('#sheen-bin').append(sheen);
  sheen.appendTo($('#sheen-bin')).hide().fadeIn(3000);

  $('#fade').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'red'}, 3000)
      .animate({backgroundColor: 'blue'}, 500);
      dropped.draggable.fadeOut(3000);
    }
  })

  $('#shrink').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '-=30px',
        height: '-=30px'
      }, 1000)
    }
  })

   $('#grow').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '+=30px',
        height: '+=30px'
        }, 1000)
      }
    })

});
