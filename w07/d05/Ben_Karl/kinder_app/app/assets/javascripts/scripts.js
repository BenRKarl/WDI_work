
$(function(){
  var kittenBin = $('.kitten-container');
  var kittenImg = $('<img>').attr('src', randomKittenUrl());
  kittenImg.addClass('kitten').draggable();
  kittenBin.append(kittenImg);
})

function randomKittenUrl(){
  var url = 'http://placekitten.com/';
  var height = (Math.floor(Math.random() * (400 - 200 + 1)) + 200).toString();
  var width = (Math.floor(Math.random() * (400 - 200 + 1)) + 200).toString();
  return url + width + '/' + height;
}


