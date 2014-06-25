$(function(){
  console.log("You're learning...")
})


//MODEL - new
function Kitten(){
  this.url = undefined;
  return this;
};
//VIEWS
Kitten.prototype.getURL = function(){
    var randomWidth = Math.floor(Math.random() * 1000) + 200;
    var randomHeight = Math.floor(Math.random() * 500) + 200;
    this.url = 'http://www.placekitten.com/'+randomHeight+'/'+randomWidth;
    return this.url;
};

Kitten.prototype.showKitten = function(){
    url = Kitten.getURL()
    $('.randomImage').html("");
    console.log('kitten coming!');
    var image = $('<img>').attr('src', url).addClass("small-12 columns kitten");
    $('.randomImage').append(image)
    return this;
  }

//CONTROLLER
function setEventHandlers(button){
  // var that = this
  $(button).click(function(){

      var url = Kitten.getURL;
      var elem = Kitten.showKitten();
      console.log(this);
  });
};

//ON LOAD
$(function(){
  // kittenCollection.fetch();
  $('.dismiss').on('click', setEventHandlers($('.dismiss')))
  $('.getRandomKitten').on('click', setEventHandlers($('.getRandomKitten')))
})



// function SavedKitten(){
// };

// //MODEL - saved
// SavedKitten.prototype = {
//   savedKitten: function(kittenJSON){
//     this.id = kittenJSON.id;
//     this.url = kittenJSON.url;
//     return this;
//   },
//   //VIEWS
//   showSavedKittens: function(model){
//     this.model = model;
//     this.el = undefined;
//   }
// };

// SavedKitten.prototype.render = function(){
//   var image = $('<img>').attr('src', this.model.url).addClass("small-3 columns saved");
//   this.el = image;
//   return this;
// };




// //CONTROLLER - saved
// function KittenCollection(){
//   this.models = {};
// };

// KittenCollection.prototype.fetch = function(){
//   var that = this
//   $.ajax({
//     url: '/kittens',
//     dataType: 'json',
//     success: function(data){
//       console.log(data)
//     }
//   })
// };

// KittenCollection.prototype.add = function(kittenJSON){
//   var newKitten = new Kitten(kittenJSON);
//   this.models[kittenJSON.id]=newKitten;
//   $(this).trigger('add Flare');
//   return this;
// };



// var kittenCollection = new KittenCollection();
