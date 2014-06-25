function randomUrl(){
  var width   = Math.floor(Math.random() * 200 + 100);
  var height  = Math.floor(Math.random() * 200 + 100);
  return "http://placekitten.com/" +width+ "/" +height;
}

// ----- Model -----
function KittenModel(obj){
  this.url = obj ? obj.url : randomUrl();
  this.id  = obj ? obj.id  : undefined;       //addition of this.id after changing to object parameter
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
  var that = this;
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: kitten},// { url: kitten.url }} //referring to kitten on line 31
    success: function(data){
      var kitten = new KittenModel(data);
      that.kittens[kitten.id] = kitten;
    }
  })

}

