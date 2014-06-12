// var kittenCollection = new KittensCollection;

function presentKittenForJudgement(){
  var kittenModel = new KittenModel()
  var kittenView  = new KittenView(kittenModel);
  kittenView.render().el.hide().appendTo($('.kitten-presenter')).fadeIn(1000)
                                                                .draggable();
}

function removeKitten(el){
  el.fadeOut(1000).remove();
}
function admireKitten(url){
  var kitte = new KittenModel(url);
}


function setEventHandlers(){
  $('.not-meow').droppable({
    drop: function(e, dropped){
      removeKitten(dropped.draggable);
      presentKittenForJudgement();
    },
    hoverClass : "drop-hover"
  })
  $('.meow').droppable({
    drop: function(e, dropped){
      admireKitten(dropped.draggable.attr('src'));
    },
    hoverClass : "drop-hover"
  })
}


$(function(){
  setEventHandlers();
  presentKittenForJudgement();
});
