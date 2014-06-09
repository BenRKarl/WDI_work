$(function(){
  var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100')
                        .addClass('sheen')
                        .draggable();

  // $('#sheen-bin').append(sheen)
  sheen.appendTo($('#sheen-bin')).hide().fadeIn(3000);

  $('#fade').droppable({

    drop: function(e, dropped){
      dropped.draggable.fadeOut(3000);
      $(this).animate({backgroundColor: 'red'}, 3000)
              .animate({backgroundColor: 'blue'}, 2000);
        }
  })

  $('#shrink').droppable({
    drop: function(e, dropped){
      dropped.draggable.animate({
        width: '-=10px',
        height: '-=10px'
      }, 1000)
    }
  })

  $('#grow').droppable({
    drop: function(e, dropped){
      dropped.draggable.animate({
        width: '+=10px',
        height: '+=10px'
      }, 1000)
    }
  })

  // $('#clone').droppable({
  //   drop: function(e, dropped){
  //     dropped.draggable.clone().draggable().appendTo($('#sheen-bin'))}, 1000)
  // })

});
