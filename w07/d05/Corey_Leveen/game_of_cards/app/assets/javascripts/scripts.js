function CardModel(jsonData) {
  this.name = jsonData.name;
  this.suit = jsonData.suit;
}


function CardView(model) {
  this.model = model;
  this.el    = undefined;
}

CardView.prototype.render = function() {
  var $div = $('<div>').addClass('card').addClass(this.model.suit);
  var $topLeft = $('<div>').addClass('top left').text(this.model.suit+" "+this.model.name);
  var $bottomRight = $('<div>').addClass('bottom right').text(this.model.suit+" "+this.model.name);
  $div.append($topLeft, $bottomRight);
  this.el = $div;
  return this;
}


function CardCollection() {
  this.models = [];
}

CardCollection.prototype.fetch = function() {
  var that = this;
  $.ajax({
    url: '/',
    dataType: 'json',
    success: function(data) {
        $.each(data, function(i, datum){
          var cardModel = new CardModel(datum);
          that.models.push(cardModel);
          var cardView = new CardView(cardModel);
          $('#cards').append(cardView.render().el);
        }
      )
    }
  })
};




$(function(){
  var collection = new CardCollection();
  $('#button').click(function(){
    collection.fetch();
  });
})
