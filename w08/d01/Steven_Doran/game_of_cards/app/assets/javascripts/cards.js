

// ***** MODEL *****

function CardModel(data){
   this.name = data.name;
   this.suit = data.suit;
};


// ***** VIEW *****

function CardView(model){
   this.model = model;
   this.el = undefined;
};

CardView.prototype.render = function(){
   var $cardDiv = $('<li>').addClass('card');
   var $cardName = this.model.name;
   var $cardSuit = this.model.suit;
   $cardDiv.html($cardName +' of ' + $cardSuit);

   this.el = $cardDiv;
   return this;
};


// ***** COLLECTION *****

function CardCollection(){
   this.models = [];
};

CardCollection.prototype.fetch =function() {
   var that = this;

   $.ajax({
      url: '/cards',
      dataType: 'json',
      success: function(data) {
         for (var i in data){
            var cardModel = new CardModel(data[i]);
            that.models.push(cardModel);
            var cardView = new CardView(cardModel);
            $('.card-list').append(cardView.render().el);
         };
      }
   })

};



$(function(){

   $('.get-cards').on('click', function(){
      $('.card-list').html('');
      var cardCollection = new CardCollection();
      cardCollection.fetch();
   })

 

})







