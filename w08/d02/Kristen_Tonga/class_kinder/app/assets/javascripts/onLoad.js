function kittenCollection = new KittenCollection();

function presentKittenForJudgement(){
  var kittenModel = new KittenModel();
  var kittenView = new KittenView(kittenModel);
  kittenView.render().el.appendTo($('.kitten-presenter')).fadeIn(1000).draggable();
}

function removeKitten(el){
  el.fadeOut(1000).remove();
}

function admireKitten(url){
  var kitten = new KittenModel({url: url});
  kittenCollection.add(kitten);
}

function setEventHandlers(){
  $('.not-meow').droppable({
    drop: cuntion(e, droppable({
      console.log("not-meow")
      removeKitten(dropped.draggable);
      presentKittenForJudgement()
  }
)}
function setEventHandlers(){
  $('.meow').droppable({
    admireKitten(dropped.draggable.attr('src'))
    console.log("meow")
  }
)}

$(function(){
  presentKittenForJudgement();
});
