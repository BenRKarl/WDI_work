function randomURL(){
  var width = Math.floor(Math.random()*200+100);
  var height = Math.floor(Math.random()*200+100);
  return "http://placekitten.com/" + width + "/" + height;
}

function KittenModel(obj){
  this.url = obj ? orb.url : randomURL();
  this.id = obj ? obj.id   : undefined;
};

function KittenView(model){
  this.model  = model;
  this.el     = undefined;
};

KittenView.prototype.render = function (){
  var img = $('<img>').attr('src', this.model.url)
                      .addClass('kitten');
  this.el = img;
  return this;
};

function KittenCollection(){
  this.kittens = {}
};

KittenCollection.prototype.add = function(kitten){
  var that = this;
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: kitten},
    success: function(data){
      var kitten = new Kitten(data);
      this.kittens[kitten.id] = kitten;
    }
  })
}
