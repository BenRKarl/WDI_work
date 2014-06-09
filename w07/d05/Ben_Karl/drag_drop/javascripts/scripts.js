$(function(){
  var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100')
                .addClass('sheen')
                .draggable();
  sheen.appendTo($('#sheen-bin')).hide().fadeIn(3000);

  $('#fade').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'red'}, 3000)
      .animate({backgroundColor: 'blue'}, 3000)
      dropped.draggable.fadeOut(3000);
    }
  });

  $('#shrink').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '-=20px',
        height: '-=20px'
      }, 1000)
    }
  })

  $('#embiggen').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '+=20px',
        height: '+=20px'
      }, 1000)
    }
  })



});
