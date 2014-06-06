
$(function() {
  var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100')
              .addClass('sheen')
              .draggable();

  sheen.appendTo($('#sheen-bin')).hide().fadeIn(3000);
  $('#fade').droppable({
    drop: function(e, dropped){
      dropped.draggable.fadeOut(3000);
      $(this).animate({backgroundColor: "gray"}, 3000);
    }
  });

  $('#shrink').droppable({
    drop: function(e, dropped) {
      dropped.draggable.animate({
        width: '-=10px',
        height: '-=10px'
      }, 1000);
      }
    });

  $('#enlarge').droppable({
    drop: function(e, dropped) {
      dropped.draggable.animate({
        width: '+=10px',
        height: '+=10px'
      }, 1000);
      }
    });



});
