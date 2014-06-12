function presentKittenForJudgement(){
  var kitten = new KittenModel();
  var kittenView = new KittenView(kittenModel);
  kittenView.render().el.appendTo($('.kitten-presenter')).draggable;
}
$(function(){
  presentKittenForJudgement();
});
