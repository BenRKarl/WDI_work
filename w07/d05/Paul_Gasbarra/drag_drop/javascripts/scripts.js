$(function(){
  console.log("You have function.");

  var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100')
    .addClass('sheen')
    .draggable();

    sheen.appendTo($('#sheen-bin')).hide().fadeIn(200);

    $('#fade').droppable({
      drop: function(e, dropped){
      // $(dropped.draggable).animate({backgroundColor: 'red'}, 3000 );
      $(dropped.draggable).fadeOut(500);
    }
    });

  //$('#sheen-bin').append(sheen);
  sheen.appendTo($('#sheen-bin')).hide().fadeIn(300);


  $('#shrink').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '-=10px',
        height: '--10px'
      })
    }
  })

  $('#engiggen').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '+=10px',
        height: '+=10px'
      })
    })


    }
  })
});
