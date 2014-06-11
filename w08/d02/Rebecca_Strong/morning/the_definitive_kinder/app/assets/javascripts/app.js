function presentKittenForJudgement(){


  var kittenModel = new KittenModel();
var kitten = new KittenView(kittenModel);
kittenView.render().el.hide().appendTo($('.kitten-presenter')).fadeIn(1000);
}


var kittenCollection = new KittenCollection();


$(function(){
  presentKittenForJudgement();

});

function removeKitten(el){
  el.fadeOut(1000).remove();
}

function admireKitten(url){
var kitten = new KittenModel(url);
kittenCollection.add(kitten);


}

function setEventHandlers(){
  $(."not-meow").droppable({
    drop: function(e, dropped){

    },
    hoverClass: "drop-hover"
  })

$(."meow).droppable("
  drop: function(e, dropped) {

  },
  hoverClass: "drop=hover"
})
}

$(function(){
  setEventHandlers();
  presentKittenForJudgement();
});
