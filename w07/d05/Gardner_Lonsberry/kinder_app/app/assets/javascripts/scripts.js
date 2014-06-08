$(function(){
  var sheen = $('<img>').attr('src', 'http://placekitten.com/100/100')
        .addClass('kitten')
        .draggable();
        sheen.appendTo($('#kitten-bin'))

  $('#fade').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'red'}, 100)
        .animate({backgroundColor: 'blue'}, 500);
      dropped.draggable.fadeOut(3000);
    }
  })

  $('#shrink').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '-=10%',
        height: '-=10%'
      },15000)
    }
  })
});



