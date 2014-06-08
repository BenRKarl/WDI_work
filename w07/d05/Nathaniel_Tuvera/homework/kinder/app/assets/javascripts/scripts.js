console.log("console test for Kinder")
// ***** New Image *****
function NewImage(){
  var randNum = Math.floor(Math.random() * (500 - 100 + 1)) + 100;
  var kittenImage = $('<img>').attr('src', 'http://www.placekitten.com/'+ randNum + '/' + randNum)
                              .addClass('kitten')
                              .draggable();
  kittenImage.appendTo($('.view'))
}

// ***** Model *****
function Kitten(kittenJSON){
  this.url  = kittenJSON.url;
  this.id   = kittenJSON.id;
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
  this.models[kittenJSON.id] = newKitten;
  $(this).trigger('addFlare');
  return this;
}

KittensCollection.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: paramObject},
    success: function(data){
        that.add(data);
    }
  })
}

KittensCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/kittens',
    dataType: 'json',
    success: function(data){
      for (idx in data){
      that.add(data);
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


  $('#accept').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'green'}, 100)
      .animate({backgroundColor: 'white'}, 500);
      dropped.draggable.fadeOut(100);
      var newData = $('.kitten').attr('src')
      var kittensCollection = new KittensCollection();
      NewImage();
      kittensCollection.create({url: newData})
    }
  })

    $('#reject').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'red'}, 100)
      .animate({backgroundColor: 'white'}, 500);
      dropped.draggable.fadeOut(100);
      NewImage();
    }
  })
})
