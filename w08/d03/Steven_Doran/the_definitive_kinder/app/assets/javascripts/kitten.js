<<<<<<< HEAD

function randomUrl () {
   var width = Math.floor(Math.random()*200+100);
   var height = Math.floor(Math.random()*200+100);   
   return 'http://placekitten.com/' + width + '/' + height;
};

function KittenModel(obj){
   this.url = obj ? obj.url : randomUrl();
   this.id = obj ? obj.id : undefined;
};

function KittenView(model){
   this.model = model;
   this.el = undefined;
};

KittenView.prototype.render = function() {
   var $img = $('<img>').attr('src', this.model.url)
                        .addClass('kitten');
   this.el = $img;
   return this;
};


function KittenCollection () {
   this.kittens = {};

};

KittenCollection.prototype.add = function(kitten) {
   var that = this;
   $.ajax({
      url: '/kittens',
      method: 'post',
      dataType: 'json',
      data: {kitten: { url: kitten.url }},
      success: function(data) {
         var kitten = new KittenModel(data);
         that.kittens[kitten.id] = kitten;
      }
   })
=======
function randomUrl(){
  var width  = Math.floor(Math.random()*200+100);
  var height = Math.floor(Math.random()*200+100);
  return "http://placekitten.com/"+width+"/"+height;
}

function KittenModel(url){
  this.url = url || randomUrl();
}

function KittenView(model){
  this.model  = model;
  this.el     = undefined;
}

KittenView.prototype.render = function (){
  var img = $('<img>').attr('src', this.model.url)
                      .addClass('kitten');
  this.el = img;
  return this;
}


function KittenCollection(){
  this.kittens = {}
}

KittenCollection.prototype.add = function(kitten){

>>>>>>> b7e7a7d102bdf6bf63402721797d5d7cea783a68
}





<<<<<<< HEAD
=======



>>>>>>> b7e7a7d102bdf6bf63402721797d5d7cea783a68
