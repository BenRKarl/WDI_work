// ***** MODEL *****

   function QuoteModel(data){

      this.text = data.text;
      this.attribution = data.attribution;
   }

// ***** VIEW *****

   function QuoteView(model){
      this.model = model;
      this.el = undefined;
   }

   QuoteView.prototype.render = function(){

      var $textDiv = $("<div>").html(this.model.text).addClass('quote text');
      var $attrDiv = $("<div>").html(this.model.attribution).addClass('quote attribution');
      $textDiv.append($attrDiv);

      this.el = $textDiv;
      return this;

   }

// ***** COLLECTION *****

function QuoteCollection(){
   this.models = [];
}

QuoteCollection.prototype.fetch = function(){
   var offset = this.models.length;
   var that = this;

   $.ajax({
      url: 'quotes/?offset=' + offset,
      dataType: 'json',
      success: function(data){
         $.each(data, function(idx, ele){
            var quoteModel = new QuoteModel(ele);
            that.models.push(quoteModel);
            var quoteView = new QuoteView(quoteModel);
            $('#container').append(quoteView.render().el);
         })
      }
   })
}





