
function CardModel(cardJSON){
  this.suit = cardJSON.suit
  this.name = cardJSON.name
}

function cardsCollection(){
  this.cards = []
}

cardsCollection.prototype.fetch = function(){
  var that = this
  $.ajax({
      url: '/',
      dataType: 'json',
      success: function(data){
          $.each(data, function(index, cardObject){
            that.cards.push(cardObject)
          })
        }
    })
}

cardsCollection.prototype.shuffle = function(){
    function shuffle(array) {
      var currentIndex = array.length
        , temporaryValue
        , randomIndex
        ;

      // While there remain elements to shuffle...
      while (0 !== currentIndex) {

        // Pick a remaining element...
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex -= 1;

        // And swap it with the current element.
        temporaryValue = array[currentIndex];
        array[currentIndex] = array[randomIndex];
        array[randomIndex] = temporaryValue;
      }

      return array;
    }
    this.cards = shuffle(this.cards)
    return this
}

cardsCollection.prototype.display = function(){
  $.each(this.cards, function(index, cardObject){
            var newCardLi = $('<div>').text(cardObject.name + ' of ' + cardObject.suit)
            $('#cards').append(newCardLi)
          })
}

var myDeck = new cardsCollection()

$(function(){
  $('#cards-button').on('click', function(){
    $.ajax({
      url: '/',
      dataType: 'json',
      success: function(data){
          $.each(data, function(index, cardObject){
            var newCardLi = $('<div>').text(cardObject.name + ' of ' + cardObject.suit)
            $('#cards').append(newCardLi)
          })
        }
    })
  })
})
