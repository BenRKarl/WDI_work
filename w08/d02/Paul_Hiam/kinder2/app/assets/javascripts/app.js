var kittenCollection = new KittenCollection;
function judgeKitten(){
  var kittenModel = new KittenModel();
  var kittenView = new KittenView(kittenModel);
  kittenView.render().el.appendTo($('.present-kit')).fadeIn(1000).draggable();

}
function rmKitten(el){
  el.fadeOut(1000).remove();
}
function loveKitten(url){
  var kitten = new KittenModel(url);
  kittenCollection.add(kitten);
}
function setEventHandlers(){
  $('.not-meow').droppable({
    drop: function(e, dropped){
      rmKitten(dropped.draggable);
      judgeKitten();
    },
    hoverClass: "drop-hover"
  })
  $('.meow').droppable({
    drop: function(e, dropped){
      loveKitten(dropped.draggable.attr('src'));
    },
    hoverClass: "drop-hover"
  })
}


$(function(){
  judgeKitten();
})
