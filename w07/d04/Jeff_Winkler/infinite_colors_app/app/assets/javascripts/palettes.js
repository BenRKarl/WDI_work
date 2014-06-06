
function PaletteModel(data) {
  this.title = data.title;
  this.colors = data.colors;
}

function PaletteView(paletteModel) {
  this.model = paletteModel;
  this.el = undefined;
}

PaletteView.prototype.render = function() {
  var $div = $('<div>').addClass('palette');
  var $span = $('<span>').text(this.model.title).addClass('title');
  $div.append($span);
  $.each(this.model.colors, function(index, color) {
    var $colorDiv = $('<div>').text('#'+color).css("background-color", "#"+color);
    $div.append($colorDiv);
  });
  this.el = $div;
  return this;
}

function PaletteCollection() {
  this.models = [];
}


PaletteCollection.prototype.fetch = function() {
  var offset = this.models.length;
  var that = this;
  $.ajax({
    url: 'palettes/?offset='+offset,
    dataType: 'json',
    success: function(data) {
      $.each(data, function(index, palette) {
        var newPalette = new PaletteModel(palette);
        that.models.push(newPalette);
        var paletteView = new PaletteView(newPalette);
        $('#palettes').append(paletteView.render().el);

      });
    }
  });
}
