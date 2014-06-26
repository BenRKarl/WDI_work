var kittenCollection = new KittenCollection();

function presentKittenForJudgement(){
  var kittenModel = new KittenModel(randomUrl());
  var kittenView = new KittenView(kittenModel);
  kittenView.render().el.appendTo($('.kitten-presenter')).dragable;
}

function removeKitten(el){
  el.fadeOut(1000).remove();
}

function admireKitten(url){
  var kitten = new KittenModel({url:url});
  kittenCollection.add(kitten);
}

function setEventHandlers(){
  $(".not-meow").droppable({
    drop: function(e, dropped){
    removeKitten(dropped.draggable);
    presentKittenForJudgement();
    },
    hoverClass: "drop-hover"
  })
    $(".meow").droppable({
    drop: function(e, dropped){
      admireKitten(dropped.draggable.attr('src'));
    },
    hoverClass: "drop-hover"
  })
}

$(function(){
  setEventHandlers();
  presentKittenForJudgement();
})
