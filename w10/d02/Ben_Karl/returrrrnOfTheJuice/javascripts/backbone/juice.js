//Juice Model constructor function
var JuiceModel = Backbone.Model.extend({
  initialize: function(){
    this.set('ingredients', new IngredientCollection());
  },
  defaults:{
    name: "Anonymous Juice"
  }
});

//Juice Model collection function
var JuiceCollection = Backbone.Collection.extend({
  model: JuiceModel
});

//Juice Model view
var JuiceView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render: function(){
    var that = this;

    var renderedHTML = this.template( this.model.attributes );
    this.$el.html(renderedHTML);

    var juiceIngredientCollectionView = new IngredientCollectionView({
                collection: this.model.get('ingredients'),
                el: this.$el.find('.ingredient-list')
              });
    juiceIngredientCollectionView.render();

    this.$el.find('form').submit(function(event){
      event.preventDefault();
      var ingredientNameField = that.$el.find('input.new-ingredient-name');
      var ingredientName = ingredientNameField.val();
      var ingredientAmountField = that.$el.find('input.new-ingredient-amount');
      var ingredientAmount = ingredientAmountField.val();
      ingredientNameField.val('');
      ingredientAmountField.val('');
      that.model.get('ingredients').add({
              name: ingredientName,
              amount: ingredientAmount
            });
    });
    return this;
  },
  events:{
    "click button[name='delete-juice']":"removeJuice"
  },
  removeJuice: function(){
    this.model.destroy();
    this.$el.empty();
  }
});

// Juice Collection View
// ..... nothing, didn't need it I suppose
