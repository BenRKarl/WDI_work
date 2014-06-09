$(function(){
  console.log("You're learning...")
})


//MODEL - new
function newKitten(){
  function getURL(){
    var randomWidth = Math.floor(Math.random() * 1000) + 200;
    var randomHeight = Math.floor(Math.random() * 500) + 200;
    var url = 'http://www.placekitten.com/'+randomHeight+'/'+randomWidth;
    return url;
  };
//VIEWS
  function showRandomKitten(){
    url = newKitten.getURL()
    $('.randomImage').html("");
    console.log('kitten coming!');
    var image = $('<img>').attr('src', url).addClass("small-12 columns kitten");
    $('.randomImage').append(image)
    return this;
  }
};
//CONTROLLER
function setEventHandlers(button){
  var getRandomKitten = $('.getRandomKitten')[0];
  $(button).click(function(){
      var url = newKitten.getURL;
      var elem = newKitten.showKitten();

  });
};



function SavedKitten(){
};

//MODEL - saved
SavedKitten.prototype = {
  savedKitten: function(kittenJSON){
    this.id = kittenJSON.id;
    this.url = kittenJSON.url;
    return this;
  },
  //VIEWS
  showSavedKittens: function(model){
    this.model = model;
    this.el = undefined;
  }
};

SavedKitten.prototype.render = function(){
  var image = $('<img>').attr('src', this.model.url).addClass("small-3 columns saved");
  this.el = image;
  return this;
};




//CONTROLLER - saved
function KittenCollection(){
  this.models = {};
};

KittenCollection.prototype.fetch = function(){
  var that = this
  $.ajax({
    url: '/kittens',
    dataType: 'json',
    success: function(data){
      console.log(data)
    }
  })
};

KittenCollection.prototype.add = function(kittenJSON){
  var newKitten = new Kitten(kittenJSON);
  this.models[kittenJSON.id]=newKitten;
  $(this).trigger('add Flare');
  return this;
};



var kittenCollection = new KittenCollection();
//ON LOAD
$(function(){
  kittenCollection.fetch();
  $('.dismiss').on('click', setEventHandlers($('.dismiss')))
  $('.getRandomKitten').on('click', setEventHandlers($('.getRandomKitten')))
})

