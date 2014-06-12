var kittenCollection = new KittenCollection();
function presentKittenForJudgement(){
  var kittenModel = new KittenModel()
  var kittenView  = new KittenView(kittenModel)
  kittenView.render().el.hide().appendTo($('.kitten-presenter')).fadeIn().draggable();
}

function removeKitten(el){
  el.fadeOut(1000).remove();
}

function admireKitten(url){
  var kitten = new KittenModel({url: url});
  kittenCollection.add(kitten)
}

function setEventHandlers(){
  $('.not-meow').droppable({
    drop: function(e, dropped){
      removeKitten(dropped.draggable);
      presentKittenForJudgement();
      console.log('not-meow')

    },
    hoverClass: "drop-hover"
  })
  $('.meow').droppable({
    drop: function(e, dropped){
      admireKitten(dropped.draggable.attr('src'))
      removeKitten(dropped.draggable);
      presentKittenForJudgement();

      console.log('meow')
    }
  })


}

$(function(){
  setEventHandlers();
  presentKittenForJudgement();
});
