$(function(){
  var kittenBin = $('.kitten-container');
  var aNewKitten = new Kitten(randomKittenUrl());
  kittenBin.append(aNewKitten.render().el);
});

function Kitten(url){
  this.url = url;
  this.el = undefined;
};

Kitten.prototype.render = function(){
  var kittenImg = $('<img>').attr('src', this.url)
        .addClass('kitten').draggable();
  this.el = kittenImg;
  return this;
};

function randomKittenUrl(){
  var url = 'http://placekitten.com/';
  var height = (Math.floor(Math.random() * (400 - 200 + 1)) + 200).toString();
  var width = (Math.floor(Math.random() * (400 - 200 + 1)) + 200).toString();
  return url + width + '/' + height;
};

// function meowOrNotMeow(event, kitten){

// }


