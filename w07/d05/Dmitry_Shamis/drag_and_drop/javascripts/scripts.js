console.log('Drag and Drop Test')

$(function() {
  var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100')
  .addClass('sheen')
  .draggable()
  sheen.appendTo($('#sheen-bin'));

  $('#fade').droppable({
    drop: function(e, dropped) {
      $(this).animate({backgroundColor: 'red'}, 300).animate({backgroundColor: "blue"}, 3000)
      dropped.draggable.fadeOut(3000);
    }
  })

  $('#shrink').droppable({
    drop: function(e, dropped) {
      $(dropped.draggable).animate({
        width: '-=10px',
        height: '-=10px'
      }, 1000)
    }
  })

  $('#grow').droppable({
    drop: function(e, dropped) {
      $(dropped.draggable).animate({
        width: '+=10px',
        height: '=+10px',
        borderRadius: '50%'
      }, 1000)
    }
  })

  $('#clone').droppable({
    drop: function(e, dropped) {
      $(dropped.draggable).clone().draggable().appendTo($('#sheen-bin'))
    }
  })


});
