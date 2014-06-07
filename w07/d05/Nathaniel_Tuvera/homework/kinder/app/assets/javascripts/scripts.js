console.log("console test for Kinder")
// ***** New Image *****
function NewImage(){
    var randNum = Math.floor(Math.random() * (500 - 100 + 1)) + 100;
  var kittenImage = $('<img>').attr('src', 'http://www.placekitten.com/'+ randNum + '/' + randNum)
                              .addClass('kitten')
                              .draggable();
  kittenImage.appendTo($('.view'))

  $('#accept').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'green'}, 100)
      .animate({backgroundColor: 'white'}, 500);

      dropped.draggable.fadeOut(100);
    }
  })

    $('#reject').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'red'}, 100)
      .animate({backgroundColor: 'white'}, 500);

      dropped.draggable.fadeOut(100);
    }
  })
}

// ***** Model *****
function Kitten(kittenJSON){
  this.url  = url;
  this.id   = id;
}

// ***** View *****
function KittenView(model){
  this.model= model;
  this.el   = undefined
}

KittenView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.url);
  this.el = newElement
  return this;
};

// ***** Collection ****
function KittensCollection(){
  this.models = {};
}

KittensCollection.prototype.add = function(kittenJSON){
  var newKitten = new Kitten(kittenJSON);
  this.models[kittenKSON.id] = newKitten;
  $(this).trigger('addFlare');
  return this;
}

KittensCollection.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/kittens',
    dataType: 'json',
    success: function(data){
      for (idx in data){
        that.add(data[idx]);
      }
    }
  })
}

var kittensCollection = new KittensCollection();

$(function(){

    NewImage();

  $(kittensCollection).on('addFlare', function(){
    NewImage();
  })

  // $// need function to represent a "submit" when an image is dragged over
  // var newUrl = //need to save the url of the kitten image//
  // KittensCollection.create({url: newUrl});
})
