//model
function Kitten(url){
  this.url = url;
  
}

Kitten.prototype.create = function(paramObject){
  var that = this;
   $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: paramObject},
    success: function(data){
      console.log(data);
    }
    
   })
}


function randoKitten(){
$('#show_meow').html('');
var random = 1 + Math.floor(Math.random() * 800);
var random2 = 1 + Math.floor(Math.random() * 800);
var url = "http://placekitten.com/"+ random + "/" + random2;
var kitten = $('<img>').attr('src', url).addclass('kitten').draggable().appendTo('#show_meow');

}





$(function(){
  randoKitten();

$('#no').droppable({
  drop: function(e, dropped) {
    dropped.draggable.fadeOut(1000);
    randoKitten();
  }
})

$('#ya').droppable({
  drop: function(e, dropped) {
    var newKittenUrl = dropped.draggable[0].src;
    var newKitten = new Kitten(newKittenUrl);
    Kitten.create({url: newKittenUrl})
    randoKitten();
  }
})
})
