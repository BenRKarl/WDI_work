
function presentKittenForJudgment() {
  kittenModel = new KittenModel();
  kittenView = new KittenView(kittenModel);
  kittenView.render().el.appendTo($('.kitten-presenter')).draggable().fadeIn(2000);
}

function setEventHandlers() {
  $('.not-meow').droppable({
    drop: function(e, dropped) {
      dropped.draggable.remove();
      presentKittenForJudgment();
    },
    hoverClass: "drop-hover"
  });
  $('.meow').droppable({
    drop: function(e, dropped) {
      console.log("meow");
    },
    hoverClass: "drop-hover"
  });
}


$(function() {
  setEventHandlers();
  presentKittenForJudgment();
});




