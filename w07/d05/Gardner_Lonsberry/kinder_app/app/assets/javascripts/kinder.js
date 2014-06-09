function Kitten(url){
  this.url = url;
  this.el = undefined;
}

Kitten.prototype.add = function(kittenData){
  var newKitten = new Kitten(kittenData);
  this.el = newKitten(kittenData);
}

Kitten.prototype.create = function(){
  $.ajax({
    url: '/kittens',
    method: 'POST',
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
      var newKitten = $('<img>').attr('src', data).draggable({axis: "x"})
      $('.picture').append(newKitten);
      newKitten.hide(800).fadeIn(800);
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
  $('.picture img').draggable({axis: "x"})
  $('.meow').css('opacity', 0.6);
  $('.not-meow').css('opacity', 0.6);
  

  $('.left').droppable({
    drop: function(e, dropped){
      var currentKitten = dropped.draggable
      flashChoice("You purrr-turbed bro?");
      $(currentKitten).fadeOut(850);
      nextKitten();
      setTimeout(function(){
        $(currentKitten).remove();
      }, 2000);
    }
  });

  $('.right').droppable({
    drop: function(e, dropped){
      var currentKitten = dropped.draggable
      flashChoice("Puuuurrrr-fect");
      $(currentKitten).fadeOut(850);
        

        var newKitten = new Kitten($(currentKitten).attr('src'));
        newKitten.create();
        nextKitten();
        setTimeout(function(){
          $(currentKitten).remove();
        }, 2000);
    }
  });
  
//   $('.meow').click(function () {
//     // Set the effect type
//     var effect = 'slide';

//     // Set the options for the effect type chosen
//     var options = { direction: $('left').val() };

//     // Set the duration (default: 400 milliseconds)
//     var duration = 500;

//     $('.picture img').toggle(effect, options, duration);
// });

  $('.meow').on('click', function(){
    clickChoice('.meow');
    $('.picture img').slideLeft(500).fadeOut(500)
  })

  $('.not-meow').on('click', function(){
    clickChoice('.not-meow');
  })
})
