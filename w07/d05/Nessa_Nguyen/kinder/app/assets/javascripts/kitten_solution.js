function randomUrl(){
  var width = Math.floor(Math.random() * 200 + 200);
  var length = Math.floor(Math.random() * 200 + 200);
  return "http://placekitten.com/"+width+'/'+height;
}

function KittenModel(obj){
  this.url = obj.url || randomUrl();
  this.id  = obj.id || undefined;
}

function KittenView(model){
  this.model = model;
  this.el    = undefined;
}

KittenView.prototype.render = function(){
  var img = $('<img>').attr('src', this.model.url).
            addClass('kitten');
  this.el = img;
  return this;          
}

function KittenCollection(){
  this.models = {};
}

KittenCollection.prototype.add = function(kitten){
  var that = this;
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: kitten},
    success: function(data){
      var kitten = KittenModel(data);
      that.models[] = 
    }
  })   
}

function presentKitten(){
  var kittenModel = new KittenModel();
  var kittenView  = new KittenView(kittenModel);
  kittenView.render().el.appendTo($('.picture')).fadeIn(1000);
}

function removeKitten(el){
  el.fadeOut(1000).remove();
}

function admireKitten(url){

}

var kittenCollection = new KittenCollection();

$(function(){
  presentKitten();
  $('.not-meow').droppable({
    drop: function(e, dropped)
    removeKitten(dropped.draggable);
  }),
  hoverClass: 'drop-hover' //style drop-hover in CSS



})
