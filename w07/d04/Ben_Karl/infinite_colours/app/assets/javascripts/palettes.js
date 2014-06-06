//***** MODEL ******

function PaletteModel(data){
  this.title  = data.title;
  this.colors = data.colors;
}

//***** VIEW ******

function PaletteView(model){
  this.model = model;
  this.el    = undefined;
}

PaletteView.prototype.render = function(){
  var $div  = $('<div>').addClass('palette');
  var $span = $('<span>').text(this.model.title).addClass('title');
  $div.append($span);
  $.each(this.model.colors, function(i, color){
    var $colorDiv = $('<div>').text("#" + color).css('backgroundColor', "#" + color);
    $div.append($colorDiv);
  })
  this.el = $div;
  return this;
}

//***** COLLECTION *****

function PaletteCollection(){
  this.models = [];
}

PaletteCollection.prototype.fetch = function(){
  var that = this;
  var offset = this.models.length;
  $.ajax({
    url: 'palettes/?offset=' + offset,
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, datum){
        var paletteModel = new PaletteModel(datum);
        that.models.push(paletteModel);
        var paletteView = new PaletteView(paletteModel);
        $('#palettes').append(paletteView.render().el);
      });
    }
  })
}
