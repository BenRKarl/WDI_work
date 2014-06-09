 console.log("You rock, Paul. Let's do this.")

var randomHeight = function(){
  minimum = 100;
  maximum = 300;
  return Math.floor(Math.random() * (maximum - minimum + 1)) + minimum
}
var randomWidth = function(){
  minimum = 200;
  maximum = 700;
  return Math.floor(Math.random() * (maximum - minimum + 1)) + minimum
}

//*********Kitty Model *************
function Kitten(kittenJSON){
  this.url=kittenJSON.url;
  this.quote=kittenJSON.quote;
  this.id = kittenJSON.id;
}

//************Kitty View************
function KittenView(model){
  this.model= model;
  this.el = undefined;
}

KittenView.prototype.render = function(){
  $div = $('div').attr('class', "kitten")
  $pic = $('<img>').attr('src', this.model.url)
  $name = $('<h3>').text("Whiskersquint")
  $quote = $('<h4>').text("Purrito, ergo, sum.")
  $div.append($pic);
  $div.append($name);
  $div.append($quote);
  this.el = $div;
  return this;
}

function KittenCollection(){
  this.models = {};
}

KittenCollection.prototype.add = function(kittenJSON){
  var newKitten = new Kitten(kittenJSON);
  this.models[kittenJSON.id] = newKitten;
  $(this).trigger('addFlare');     // shoot up in the air that add flare
  return this;
}

KittenCollection.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: paramObject},
    success: function(data){
      that:add(data);
    }
   })
}

KittenCollection.prototype.fetch = function(){
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
};
function clearAndDisplayKittenList(){

  $('.kittens').html('');

  for(idx in kittenCollection.models){
    var kitten = kittenCollection.models[idx];
    var kittenView = new KittenView(kitten);
    $('.kitten').append(kittenView.render().el);
  }
}

var kittenCollection = new KittenCollection();



$(function(){

  kittenCollection.fetch()

//If you see the 'addFlare' shot in the sky...
  $(kittenCollection).on('addFlare', function(){
  });


  $('.fetchKitten').on('click', function(){
    $('.kittenFrame').empty();
    var newKitten = "http://placekitten.com/" + randomWidth() + "/" + randomHeight());
    console.log(newKitten);

    //$quote = $('<h3>').attr("src", "http://iheartquotes.com/api/v1/random?srcformat=html");
    //$('.kittenFrame').append($pic);
    //$('.kittenFrame').append($quote);
    //

  });
});
