$(function(){

  // ***** if Internet does NOT work, then use a static kitten pic from the assets  
  // var kitten = $('#kitten_pic').draggable();

  // ****** if Internet works, then retrieve kitten pic from http://placekitten.com *****
  var picWidth  = Math.floor((Math.random() * 100) + 100); 
  var picHeight = Math.floor((Math.random() * 100) + 100);  
  var url = "http://placekitten.com/"+picWidth+"/"+picHeight;
  var kitten = $('<img>').attr('src', url).addClass('kitten').draggable();
  
  kitten.appendTo($('#kitten')).hide().fadeIn(3000);


  $('#not_meow').droppable({
    drop: function(e, dropped){
      //debugger;
      $(this).animate({backgroundColor: 'white'}, 500).animate({backgroundColor: 'red'}, 1500);
      dropped.draggable.fadeOut(3000);
    }
  });

  $('#meow').droppable({
    drop: function(e, dropped){
      //debugger;
      $(this).animate({backgroundColor: 'white'}, 500).animate({backgroundColor: 'green'}, 1500);
      dropped.draggable.fadeOut(3000);
    }
  });

})

