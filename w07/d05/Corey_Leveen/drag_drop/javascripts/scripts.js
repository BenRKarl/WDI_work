

$(function(){
  var height = Math.floor(Math.random(1)*300)
  var width  = Math.floor(Math.random(1)*300)

  var sheen = $('<img>').attr('src', 'http://placecage.com/'+height+'/'+width)
        .addClass('sheen')
        .draggable();



  sheen.appendTo( $('#sheen-bin') ).hide().fadeIn(3000);

  $('#fade').droppable({

    drop: function(e, dropped) {
      $('#fade').animate({backgroundColor: 'red'}, 3000);
      dropped.draggable.fadeOut(3000);
    }
  })


  $('#shrink').droppable({
    drop: function(e, dropped) {
      dropped.draggable.animate({
        width: '-=10px',
        height: '-=10px'
      }, 1000)
    }
  })


   $('#embiggen').droppable({
    drop: function(e, dropped) {
      dropped.draggable.animate({
        width: '+=4000px',
        height: '+=4000px'
      }, 100000)
    }
  })

});
