
$(function() {


  var displayKitten = function() {

    var a = function getRandomInt(min, max) {
      return Math.floor(Math.random() * (max - min + 1)) + min;
    };

    $('<img>').attr('src',
    "http://placekitten.com/"+a(100,300)+"/"+a(100,300))
    .addClass('kitten')
    .draggable();
    return this;
  }

  $('#kitten-bin').append(displayKitten());

  $('#meow').droppable({
    drop: function(e, dropped) {
      dropped.
      dropped.draggable.fadeOut(3000);
      history.go(0);
    }
  })

  $('#not-meow').droppable({
    drop: function(e, dropped) {
      dropped.draggable.fadeOut(3000);
      history.go(0);
    }
  })

})






































// // Kitten Model

// function Kitten(kittenJSON) {
//   this.url = kittenJSON.url;
//   this.id = kittenJSON.id;
// }


// // Kitten View

// function kittenView(model) {
//   this.model = model;
//   this.el = undefined;
// }

// kittenView.prototype.render = function() {
//   var newElement = $('<img>').html(this.model.url)
//   this.el = newElement;
//   return this;
// };

// // Collection

// function KittenCollection() {
//   this.models = {};
// }

// KittenCollection.prototype.add = function(kittenURL) {
//   var newKitten = new Kitten(kittenURL);
//   this.models[kittenURL.id] = newKitten;
//   $(this).trigger('addFlare');
//   return this;
// }

// KittenCollection.prototype.create = function(paramObject) {
//   var that = this;
//   $.ajax({
//     url: '/kittens/random',
//     method: 'post'
//     dataType: 'json',
//     data: {kitten : paramObject},
//     success: function(data) {
//       that.add(data);
//     }
//   })
// }

// KittenCollection.prototype.fetch = function() {

//   var a = function getRandomInt(min, max) {
//     return Math.floor(Math.random() * (max - min + 1)) + min;
//   }
//   this.add("http://wwww.placekitten.com/"+a(200,500)+"/"+a(200,500))
// }


// var kittenCollection = new KittenCollection();

// $(function() {

//   kittenCollection.fetch();

// })


