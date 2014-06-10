function randomUrl(){
  var width = Math.floor(Math.random() * 200 + 200);
  var length = Math.floor(Math.random() * 200 + 200);
  return "http://placekitten.com/"+width+'/'+height;
}

function KittenModel(url){
  this.url = url || randomUrl;
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

function presentKitten(){
  var kittenModel = new KittenModel();
  var kittenView  = new KittenView(kittenModel);
  kittenView.render().el.appendTo($('.picture')).fadeIn(1000);
}

$(function(){
  presentKitten();
})
