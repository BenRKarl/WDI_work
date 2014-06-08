//model
function Kitten(kittenJSON){
  this.url = kittenJSON.url;
  
}
//view
function KittenView(model){
  this.model = model;
  this.el    = undefined;
}
KittenView.prototype.render = function()
{
  // var random1 = Math.floor(Math.random() * 200);
  // var random2 = Math.floor(Math.random() * 200);
  // var $img = $("<img src='http://placekitten.com/"+ random1 +"/"+ random2 +"'>")
   var $img = $("<img src='"+this.url+"'>")
  this.el = $img
  return this;
}
//collection .. ?
function KittenCollection(){
  this.models = [];
}

KittenCollection.prototype.add = function(personJSON){
  var newKitten = new Kitten(kittenJSON);
  this.models[kittenJSON.id] = newKitten;
  $(this).trigger('add');     // shoot up an add flare !
  return this;
}

KittenCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/kittens',
    dataType: 'json',
    success: function(data){
      for (idx in data){
        that.add(data[idx]);
      }
    }
  })
};




$(function(){
  var collection = new KittenCollection;
  $('#randoKit').click(function(){
    collection.fetch();
  });
})