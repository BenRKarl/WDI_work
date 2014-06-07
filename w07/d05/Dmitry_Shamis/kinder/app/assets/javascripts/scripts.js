console.log("Meooooooow");

function Kitten(url) {
  this.url = url
}

Kitten.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: paramObject},
    success: function(data) {
      console.log(data);
    }
  })
}

$(function () {
  var number = Math.floor(Math.random() * (1000 - 100 + 1)) + 100;
  var kitten = $('<img>').attr('src', "http://placekitten.com/"+number+"/"+number)
  .addClass('kitten')
  .draggable()
  .appendTo($('#kitten'));

  $('#not-meow').droppable({
    drop: function(e, dropped) {
      dropped.draggable.fadeOut(1000);
    }
  })

  $('#meow').droppable({
    drop: function(e, dropped) {
      $(this).animate({backgroundColor: 'fuchsia'}, 300).animate({backgroundColor: 'red'}, 300);
      var newKiteenUrl = dropped.draggable[0].src;
      var newKitten = new Kitten(newKiteenUrl);
      newKitten.create({url: newKiteenUrl})
      dropped.draggable.fadeOut(2000);
    }
  })
})
