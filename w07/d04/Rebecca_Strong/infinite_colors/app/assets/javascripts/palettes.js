/***** MODEL *****/

function PaletteModel(data){

  this.title = data.title;
  this.colors = data.colors;

}


function PaletteView(model){
this.model = model;
this.el = undefined;
}

PaletteView.prototype.render = function() {
//this is an anonymous function

var $div = $('<div>').addClass('palette');
//the $div is just a name, but convention dictates
//that the $ is there as a reminder that this is a jQuery object
var $span = $('<span>').text(this.model.title).addClass('title');
//where the first title refers to the title of the palette and the second refers tot he title of the style
$div.append($span);
//we need the colors, tho, so:
$.each(this.model.colors, function(i, color){
  var $colorDiv = $('<div>').text('#'+color).css('background-color', '#'+color);
//where this.colors is the array i is the index and color is the data
$div.append($colorDiv);
})
//need to set the element = to the div
this.el = $div
return this;

}

/********COLLECTION******/

function PaletteCollection() {
this.models = [];

}



PaletteCollection.prototype.fetch = function() {
  var offset = this.models.length;
  var that = this;
$.ajax({
url: 'palettes/?offset='+offset, //the root
dataType: 'json',
//async: false,
success: function(data){
  $.each(data, function(i, datum){
  //where .each requires an array ()
    var paletteModel = new PaletteModel(datum);
    that.models.push(paletteModel);
    var paletteView = new PaletteView(paletteModel);
    $('#palettes').append(paletteView.render().el);
  //render sets its el and then renders it
  //divs have background colors are associated with palettes
  });
}

})

}
