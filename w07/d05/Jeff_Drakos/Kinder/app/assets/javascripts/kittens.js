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
    data: {kitten: {url: this.url}},

    success: function(data){}
  });
}

function nextKitten(){
$.ajax({
  url: '/kittens/random',
  dataType: 'json',
  success: function(data){
    var newKitten = $('<img>').attr('src', data).draggable();
    $('.pix').append(newKitten);
    newKitten.hide(1000).fadeIn(1000);
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
  var kitty = $('.pix img').draggable();
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

// Kitten.prototype.showKitten = function(){
//   $('.kitten').html('');
//   var kittenElem = $('<img>').attr('src', this.url).addClass('theKitten').draggable();
//   $('.kitten').append(kittenElem);
// };

// Kitten.prototype.saveKitten = function(){
//   $that = this;
//   $.ajax({
//     url: '/kittens',
//     method: 'POST',
//     dataType: 'json',
//     data: {kitten: {url: this.url}},
//     success: function(){
//       $that.fetchKitten()
//     }
//   })
// };

// var kitten = new Kitten()

// $(function(){
//   $that = this;
//   kitten.fetchKitten();

//   $('meow').droppable({
//     drop: function(e, dropped){
//       var cat = $(dropped.draggable);
//     }
//   })
//   $('.meow-button').click(function(){
//     kitten.saveKitten();
//   });
//   $('.not-meow-button').click(function(){
//     kitten.fetchKitten()
//   })
// })

// function KittenView(model){
//   this.model = model;
//   this.el = undefined;
// }

// KittenView.prototype.render = function(){

//   var kittenOne = $('<img>').attr('src', 'http://placekitten.com/' + height1 + '/' + width1).addClass('kitten-bin-one');
//   var $span = $('<span>').text(this.model.url).addClass('url');
//   kittenOne.append($span);
//   var kittenTwo = $('<img>').attr('src', 'http://placekitten.com/' + height2 + '/' + width2).addClass('kitten-bin-two');
//   var $span = $('<span>').text(this.model.url).addClass('url');
//   kittenTwo.append($span);
// }

// function KittenCollection(){
//   this.models = {};
// }

// KittenCollection.prototype.add = function(kitten){
//   var newKitten = new Kitten(kitten);
//   this.models[kitten.id] = newKitten;
//   return this;
// }

// KittenCollection.prototype.create = function(paramObject){
//   var that = this;
//   $.ajax({
//     url: '/kittens',
//     method: 'post',
//     dataType: 'json',
//     data: {kitten: paramObject},
//     success: function(data){
//       that.add(data);
//     }
//   })
// }

// var kittenCollection = new KittenCollection();

// $(function(){
//   kittenCollection.fetch();
//   $('.kitten_one').on('submit'). function(e){
//     e.preventDefault();
//     var newKitty = $('.kitten_one').val();
//     kittenCollection.create({url: newName});
//   })
// })
