$(function(){
  var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100').addClass('sheen').draggable();

  // $('sheen-bin').append(sheen);
  sheen.appendTo($('#sheen-bin')).hide().fadeIn(3000);


  $('#fade').droppable({
    drop: function(e, dropped){
      //debugger;
      $(this).animate({backgroundColor: 'red'}, 500).animate({backgroundColor: 'blue'}, 1500);
      dropped.draggable.fadeOut(3000);
    }
  })

  $('#shrink').droppable({
    drop: function(e, dropped){
      //debugger;
      $(dropped.draggable).animate({
        width: '-=25px',
        height: '-=25px'
      }, 1000)
    }
  })

})