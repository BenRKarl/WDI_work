$(function(){
  var kittenImage = $('<img>').attr('src', 'http://placekitten.com/100/100')
        .addClass('kitten')
        .draggable();
        kittenImage.appendTo($('#kitten-bin')).hide().fadeIn(1000);


  $('#save').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'green'}, 100)
        .animate({backgroundColor: 'blue'}, 500);
      dropped.draggable.fadeOut(1000);
    }
  
  })
  $.ajax({
      type: 'GET',
      url: '/update',
      dataType: 'html',
      success: function(data){

      }

})

   $('#toss').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '-=10%',
        height: '-=10%'
      }, 550)
    }
  })
});



