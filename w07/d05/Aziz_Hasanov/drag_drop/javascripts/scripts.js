$(function() {
  var sheen = $("<img>").attr("src", "http://placesheen.com/100/100").addClass("sheen").draggable();
  // $("#sheen-bin").append(sheen);
  sheen.appendTo($("#sheen-bin")).hide().fadeIn(3000).css("border-radius", "50%");

  $("#fade").droppable({
    drop: function(e, dropped) {
      $(this).animate({backgroundColor: "red"}, 1000);
      dropped.draggable.fadeOut(3000);
    }
  })
  $("#shrink").droppable({
    drop: function(e, dropped) {
      $(dropped.draggable).animate({width: "-=10px", height: "-=10px"}, 1000);
    }
  })
  $("#enlarge").droppable({
    drop: function(e, dropped) {
      $(dropped.draggable).animate({width: "+=10px", height: "+=10px"}, 1000);
    }
  })
  $('#clone').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).clone().draggable().appendTo('#sheen-bin');
    }
  })
})