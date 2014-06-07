


function Kitten(kittenNumber) {
  this.url = 'http://placekitten.com/'+kittenNumber+'/'+kittenNumber;
  this.el = $('<img>').attr("src", this.url)
            .addClass("kitten-image")
            .draggable();

}


$(function() {
  var kittenNumber = Math.floor(Math.random()*1000)+100;
  var newKitten = new Kitten(kittenNumber);
  $('#kitten-div').append(newKitten.el);

});

