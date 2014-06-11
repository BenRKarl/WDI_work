

function randomUrl(){
  var width = Math.floor(Math.random()*300+100);
  var height = Math.floor(Math.random()*300+100);
  return "http://placedoge.com/"+width+"/"+height;
}

function KittenModel(url){
  this.url = url || randomUrl();
}

function KittenView(model){
  this.model = model;
  this.el = undefined;
}

KittenView.prototype.render = function(){
  var img =$('<img>').attr('src', this.model.url).addClass('kitten')
  this.el = img;
  return this; //now can call .render().el
}

function KittenCollection(){
  this.models = {}
}

KittenCollection.prototype.add = function(kitten){
  
}

