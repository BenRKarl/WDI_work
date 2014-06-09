
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

function preloadKittenPicture() {
  var picWidth  = Math.floor((Math.random() * 100) + 100); 
  var picHeight = Math.floor((Math.random() * 100) + 100);  
  var url = "http://placekitten.com/"+picWidth+"/"+picHeight;
  kitten_hidden = $('<img>').attr('src', url).addClass('kitten_hidden').draggable();
  return url; 
}


var kitten_hidden;

$(function(){  

  var picWidth  = Math.floor((Math.random() * 100) + 100); 
  var picHeight = Math.floor((Math.random() * 100) + 100);  
  var url = "http://placekitten.com/"+picWidth+"/"+picHeight;
  var kitten = $('<img>').attr('src', url).addClass('kitten').draggable();
  
  kitten.appendTo($('#kitten')).hide().fadeIn(3000);

  $('#not_meow').droppable({
    drop: function(e, dropped){      
      $(this).animate({backgroundColor: 'white'}, 500).animate({backgroundColor: 'red'}, 1500);
      dropped.draggable.fadeOut(50);
      url = preloadKittenPicture();
      kitten_hidden.appendTo($('#kitten')).hide().fadeIn(50); 
    }   
  })

  $('#meow').droppable({
    drop: function(e, dropped){     
      $(this).animate({backgroundColor: 'white'}, 500).animate({backgroundColor: 'green'}, 1500);
      dropped.draggable.fadeOut(50);
      var newKitten = new Kitten({url: url});
      newKitten.create({url: url});  
      url = preloadKittenPicture();
      kitten_hidden.appendTo($('#kitten')).hide().fadeIn(50); 
    }
  })

})


