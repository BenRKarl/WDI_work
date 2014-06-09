function CardModel(data){
  this.name = data.name;
  this.suit = data.suit;
}

function CardView(model){
  this.model = model;
  this.el    = undefined;

}

CardView.prototype.render = function(){
  var $div = $('<div>').text(this.model.name + "  " + this.model.suit).addClass('card');
  // var $span = $('<span>').text(this.model.name + "  " + this.model.suit).addClass('quotespan').fadeIn(5000);
  // $div.append($span);
  this.el = $div
  return this
}

function CardCollection(){
 this.models = [];
}

CardCollection.prototype.fetch = function(){
  var that = this
  $.ajax({
    url: '/',
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, datum){
        var cardModel = new CardModel(datum);
        that.models.push(cardModel);
        var cardView = new CardView(cardModel);
        $('#cards').append(cardView.render().el);
      });
     }
  })
}

$(function(){
  $('#showcards').click(function(e){
    e.preventDefault();
    var cards = new CardCollection();
    cards.fetch();
  })
})
