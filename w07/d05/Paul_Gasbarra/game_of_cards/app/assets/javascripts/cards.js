function CardModel(model){
  this.suit = suit
}

function CardView(model){
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function(suit, name){
  var $div = $('<div>').addClass('card').addClass(this.model.suit);
  var $topLeft = $('<div>').addClass('top left').text(this.model.suit + " " + this.model.name);
  var $bottomRight = $('<div>').addClass('bottom right').text(this.model.suit + " " + this.model.name);
  $div.append($topLeft, $bottomRight);
  this.el = $div;
  return this;
}

function Deck(){
  this.models = [];
}

Deck.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/cards',
    dataType: 'json',
    success: function(data){
      createAndRenderCards(deal);
        $.each(data, function(i, datum){
        var cardModel = new CardModel(datum);
        that.models.push(cardModel);
        var cardView = new CardView(cardModel);
        $('.cards').append(card.render().el);
      })
    }
  })
}


$(function(){
  $('.deal').on('click', function(){

  })
})
