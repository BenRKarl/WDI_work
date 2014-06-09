function Card(data) {
  this.name = data.name;
  this.suit = data.suit;
}

function CardView(model) {
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function() {
  var $div = $('<div>').addClass('card');
  var $textSpan = $('<span>').text(this.model.name + this.model.suit);
  $div.append($textSpan);
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
      $.each(data, function(i, card) {
        var card = new Card(card);
        that.models.push(card);
        var cardView = new CardView(card);
        $('.cards').append(cardView.render().el)
      })
    }
  })
}


$(function() {
  $('.deal').on('click', function() {
    var cardCollection = new CardCollection();
    cardCollection.fetch()
  })
})
