var kittenCollection = new KittenCollection();

function presentKittenForJudgement() {
  var kittenModel = new KittenModel();
  var kittenView = new KittenView(kittenModel);
  kittenView.render().el.hide().appendTo($(".kitten-presenter")).fadeIn(1000).draggable();
}

function removeKitten(kitten) {
  kitten.fadeOut(1000).remove();
}

function admireKitten(url) {
  var kitten = new KittenModel({url: url});
  kittenCollection.add(kitten);
}

function setEventHandlers() {
  $(".not-meow").droppable({
    drop: function(e, dropped) {
      console.log("not-meow");
      removeKitten(dropped.draggable);
      presentKittenForJudgement();
    },
    hoverClass: "drop-hover"
  })
  $(".meow").droppable({
    drop: function(e, dropped) {
      console.log("meow");
      admireKitten(dropped.draggable.attr("src"));
    },
    hoverClass: "drop-hover"
  })
}

$(function() {
  setEventHandlers();
  presentKittenForJudgement();
})