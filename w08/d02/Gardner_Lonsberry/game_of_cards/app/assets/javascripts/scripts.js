
function CardView(){
  this.model = model;
  this.el = undefined;
}

CardView.prototype.render = function(){
  var $div = $('<div>').addClass('name').addClass('this.model.suit');
  var $topLeft = $('<div>').addClass('top left')
  var $bottomRight = $('<div>').addClass('bottom right').text(this.model.suit+" "this.mode.name);
  $div.append($topLeft, $bottomRight);
  this.el = $div;
  return this;
}

function CardCollection(){
  this.models = [];
}

CardCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/cards'
    dataType: 'json'
    success: function(data){
      $.each(data, function(i, datum){
        var cardModel = new CardModel(datum);
        that.models.push(cardModel);
        var cardView = new CardView(cardModel);
        $('#cards').append
      });
    }
  })
}
$(function(){
  $('#show-cards').click(function(){
    collection.fetch();;
  })
})

