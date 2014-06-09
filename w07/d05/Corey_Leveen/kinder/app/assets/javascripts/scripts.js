function Kitten(url) {
  this.url = url;
}

Kitten.prototype.add = function(url) {
  var newKitten = new Kitten(url);
  return this;
};

Kitten.prototype.create = function(kittenURL) {
  var that = this;
  $.ajax({
    url: '/kittens/random',
    method: 'post',
    dataType: 'json',
    data: { kitten: {url: kittenURL }},
    success: function(data) {
      that.add(data);
    }
  })
};


var akitten = new Kitten();

$(function() {

  var displayKitten = function() {

    var a = function getRandomInt(min, max) {
      return Math.floor(Math.random() * (max - min + 1)) + min;
    };

    kitten = $('<img>').attr('src',
    "http://placekitten.com/"+a(100,300)+"/"+a(100,300))
    .addClass('kitten')
    .draggable();

    return kitten;
  }

  $('#kitten-bin').append(displayKitten());

  $('#meow').droppable({
    drop: function(e, dropped) {
      newKittenURL = dropped.draggable.attr('src');
      dropped.draggable.fadeOut('slow', function() {
        akitten.create(newKittenURL);
        $(this).remove();
        $('#kitten-bin').append(displayKitten());
      })
    }
  })

  $('#not-meow').droppable({
    drop: function(e, dropped) {
      dropped.draggable.fadeOut('slow', function() {
        $(this).remove();
        $('#kitten-bin').append(displayKitten());
      })
    }
  })
})


