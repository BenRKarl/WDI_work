$(function(){
  var sheen = $('<img>').attr('src', 'http://placekitten.com/300/300')
              .addClass('sheen').draggable();
  //$('#sheen-bin').append(sheen);
  sheen.appendTo($('#sheen-bin')).hide().fadeIn(2000);

  $('#fade').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'red'}, 100)
      .animate({backgroundColor: '#ccc'}, 500)
      dropped.draggable.fadeOut(1000).fadeIn(800);
    }
  })

  $('#shrink').droppable({
    drop: function(e, dropped){
      dropped.draggable.animate({
        width: '-=10px',
        height: '-=10px'
      }, 1000);
    }
  })  

  $('#grow').droppable({
    drop: function(e, dropped){
      dropped.draggable.animate({
        width: '+=10px',
        height: '+=10px'
      }, 1000);
    }
  }) 

  $('#clone').droppable({
    drop: function(e, dropped){
      dropped.draggable.clone();
    }
  })   
})
