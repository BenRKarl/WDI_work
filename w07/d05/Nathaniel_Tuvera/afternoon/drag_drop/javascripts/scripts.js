$(function(){
  var sheen = $('<img>').attr('src', 'http://placecage.com/170/170')
        .addClass('sheen')
        .css('position', 'center')
        .draggable();

  // $('#sheen-bin').append(sheen)
  sheen.appendTo($('#sheen-bin')).hide().fadeIn(1000);

  $('#fade').droppable({
    drop: function(e, dropped){        // callback to run after item dropped it
      $(this).animate({backgroundColor: 'red'}, 100)
      .animate({backgroundColor: 'blue'}, 500);

      dropped.draggable.fadeOut(1000);
    }
  })

    $('#shrink').droppable({
      drop: function(e, dropped){
        $(this).animate({backgroundColor: 'red'}, 100)
        .animate({backgroundColor: 'blue'}, 500);
        $(dropped.draggable).animate({
          width: '-= 30px',
          height: '-=30px'
        }, 1000)
      }
    })


    $('#grow').droppable({
      drop: function(e, dropped){
        $(this).animate({backgroundColor: 'green'}, 100)
        .animate({backgroundColor: 'blue'}, 500);
        $(dropped.draggable).animate({
          width: '+= 30px',
          height: '+=30px'
        }, 1000)
        }
     })

    $('#clone').droppable({
      drop: function(e, dropped){
        $(this).animate({backgroundColor: 'white'}, 100)
        .animate({backgroundColor: 'blue'}, 500);
        $(dropped.draggable).clone().draggable().appentTo('#sheen-bin')
      }
    })
});
