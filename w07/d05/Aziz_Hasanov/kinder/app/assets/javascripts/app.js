var kittenCollection = new KittenCollection();

function presentKittenForJudgement() {
  var kittenModel = new KittenModel();
  var kittenView = new KittenView(kittenModel);
  kittenView.render().el.hide().appendTo($(".kitten-presenter")).fadeIn(1000).draggable({
    drag: function(e, draggable) {
      var degree = parseInt(this.style.left)/20;
      $(this).css({WebkitTransform: "rotate("+degree+"deg)"});
    }
  });
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
      removeKitten(dropped.draggable);
      presentKittenForJudgement();
    },
    hoverClass: "drop-hover"
  });
  $(kittenCollection).on("change"), function() {
    $(".admired-ones").empty();
    $.each(this.kittens, function(i, kitten) {
      var kittenView = new KittenView(kitten);
      $(".admired-ones").prepend(kittenView.render().el);
    });
  }
}

$(function() {
  setEventHandlers();
  kittenCollection.fetch();
  presentKittenForJudgement();
})