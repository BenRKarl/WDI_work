function randomUrl(){
  var width   = Math.floor(Math.random() * 200 + 100);
  var height  = Math.floor(Math.random() * 200 + 100);
  return "http://www.placekitten.com/" +width+ "/" +height;
}

// ----- Model -----
function KittenModel(url){
  this.url = url || randomUrl();
}

// ----- View -----

function KittenView(model){
  this.model  = model;
  this.el     = undefined;
}

KittenView.prototype.render = function(){
  var $img = $('<img>').attr('src',randomUrl()).addClass('kitten');
  this.el = $img;
  return this;
}

// ----- Collection -----

function KittensCollection(){
  this.kittens = {};
}

KittensCollection.prototype.add = function(kitten){

}

