

function Kitten(kittenJSON) {
  this.url = kittenJSON.url;
  this.id = kittenJSON.id;
}



function getRandomKittenImage(kittenDivCssSelector) {
  var kittenNumber = Math.floor(Math.random()*1000)+100;
  var url = 'http://placekitten.com/'+kittenNumber+'/'+kittenNumber;
  var kittenEl = $('<img>').attr("src", url)
                 .addClass("kitten-image")
                 .draggable();
  $(kittenDivCssSelector).append(kittenEl);
}


function KittenCollection() {
  this.models = {};
}

KittenCollection.prototype.add = function(kittenJSON) {
  var newKitten = new Kitten(kittenJSON);
  this.models[newKitten.id] = newKitten;
  //$(this).trigger('add');
  return this;
}

KittenCollection.prototype.create = function(paramObject) {
  var that = this;
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: paramObject},
    success: function(data) {
      that.add(data);
    }
  });
}


$(function() {
  var kittenImgEl = getRandomKittenImage('#kitten-div');
  $('.no-meow').droppable({
    drop: function(e, dropped) {
      dropped.draggable.fadeOut(500, function(){
        getRandomKittenImage('#kitten-div');
        $(this).remove();
      });
    }
  });
});

