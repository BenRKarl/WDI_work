$(function(){
  function rand_100(minCat, maxCat){
    Math.round((Math.random()*(maxCat-minCat)+minCat)/100)*100;
  var cat = $('<img>').attr('src', 'http://placekitten.com/g/' + minCat + '/' + maxCat )
        .addClass('cat')
        .draggable();

  //$('#cat-bin').append(sheen);
  cat.appendTo($('#cat-bin')).hide().fadeIn(3000);
// var cat = $('<img>').attr('src', 'http://placekitten.com/g/200/300')

  $('#fade').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'red'}, 100)
        .animate({backgroundColor: 'blue'}, 500);
      dropped.draggable.fadeOut(3000);
    }
  })

  $('#shrink').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '-=10%',
        height: '-=10%'
      },15000)
    }
  })

  $('#embiggen').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '+=100px',
        height: '+=100px'
      }, 1000)
    }
  })

$('#clone').droppable({
  drop: function(e, dropped){
    $(dropped.draggable).clone().draggable().appendTo('#cat-bin');
  }
})


});



