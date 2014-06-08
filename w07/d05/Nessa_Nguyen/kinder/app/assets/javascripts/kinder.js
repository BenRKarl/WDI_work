function Kitten(url){
  this.url = url;
}

Kitten.prototype.add = function(kittenJson){
  var newKitten = new Kitten(kittenJson);
}

Kitten.prototype.create = function(){
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: { kitten: { url: this.url } },
    success: function(data){}
  });
}

function nextKitten(){
  $.ajax({
    url: '/kittens/random',
    dataType: 'json',
    success: function(data){
      var newKitten = $('<img>').attr('src', data).draggable();
      $('.picture').append(newKitten);  
      newKitten.hide(800).fadeIn(800);
      // new image fade in smoothly
    }  
  });
}

function clickChoice(choiceSelector){
    $(choiceSelector).css('opacity', 1)
    setTimeout(function(){
      $(choiceSelector).css('opacity', 0.6)
    }, 600);
}

function flashChoice(choice){
  $('.choice').html(choice);
  var text = $('.choice').first()
  $(text).hide().fadeIn(500).fadeOut(500)
}

$(function(){
  var kitty = $('.picture img').draggable();
  $('.meow').css('opacity', 0.6);
  $('.not-meow').css('opacity', 0.6);

  $('.left').droppable({
    drop: function(e, dropped){
      var currentKitten = dropped.draggable
      flashChoice('NOPE');
      $(currentKitten).fadeOut(600); 
      nextKitten();
      setTimeout(function(){
        $(currentKitten).remove();
      }, 2000);     
    }
  });


  $('.right').droppable({
    drop: function(e, dropped){
      var currentKitten = dropped.draggable
      flashChoice('MEOW');
      $(currentKitten).fadeOut(600);
      
      var newKitten = new Kitten($(currentKitten).attr('src'));
      newKitten.create(); 
      nextKitten();
      setTimeout(function(){
        $(currentKitten).remove();
      }, 2000); // remove previous kitten image  
    }
  });

  $('.meow').on('click', function(){ 
    clickChoice('.meow');
  })

  $('.not-meow').on('click', function(){ 
    clickChoice('.not-meow');
  })  
})
