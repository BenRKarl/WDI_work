function randomUrl(){
var width = Math.floor(Math.random*200+100);
var height = Math.floor(Math.random*200+100);
return "http://placekitten.com/"+width+"/"+height;
}


function KittenModel(url){
this.url = url || randomUrl();
}

function KittenView(model){

  this.model = model;
  this.el = undefined;



}


KittenView.prototype.render  = function(){
  // in order to set src attribute
var img = $('<img>').attr('src', this.model.url )
.addClass('kitten');
// set element of the view to the image
this.el = img;
//so that we can call the 'el'
return this;

}

function KittenCollection(){
  //we need some kind of obj to keep track of values (which will be the kitten objects themselves)
  this.kittens = {}
}


KittenCollection.prototype.add = function(kitten){

$.ajax({
url: '/kittens',


})
KittenCollection

}
