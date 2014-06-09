
function Kitten(kittenJSON){
  this.url = kittenJSON.url;
  this.id = kittenJSON.id;
}


Kitten.prototype.create = function(url){  
   $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: url},
    success: function(){}
   })
}


function getKittenPic() {
  var picWidth  = Math.floor((Math.random() * 100) + 100); 
  var picHeight = Math.floor((Math.random() * 100) + 100);  
  url = "http://placekitten.com/"+picWidth+"/"+picHeight;
  var kitten = $('<img>').attr('src', url).addClass('kitten').draggable();
  
  kitten.appendTo($('#kitten')).hide().fadeIn(1000);
}


var url;

$(function(){
  getKittenPic();

  $('#not_meow').droppable({
    drop: function(e, dropped){
      getKittenPic();
      $(this).animate({backgroundColor: 'lightgrey'}, 500).animate({backgroundColor: 'red'}, 2000);
      dropped.draggable.fadeOut(3000);
    }
  })

  $('#meow').droppable({
    drop: function(e, dropped){      
      getKittenPic();
      $(this).animate({backgroundColor: 'lightgrey'}, 500).animate({backgroundColor: 'green'}, 2000);
      dropped.draggable.fadeOut(3000);    
      var newKitten = new Kitten({url: url});
      newKitten.create({url: url});
    }
  })

})


