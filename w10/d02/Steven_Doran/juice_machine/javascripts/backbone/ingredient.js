// *** INGREDIENT MODEL ***

var Ingredient = Backbone.Model.extend({
   defaults: {
      name: '',
      amount: 0
   }
});


// *** INGREDIENT COLLECTION ***

var IngredientCollection = Backbone.Collection.extend({
   model: Ingredient
});


// *** INGREDIENT VIEW ***

var IngredientView = Backbone.View.extend({
   tagName: 'li',
   template: _.template($('#ingredient-template').html()),
   render: function(){
      this.$el.empty();
      var html = (this.template(this.model.attributes));
      this.$el.html(html);
      return this;
   }
});


// *** INGREDIENT LIST VIEW ***

var IngredientListView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.collection, 'all', this.render);
   },
   render: function(){
      var that = this;
      this.$el.empty();
      _.each(this.collection.models, function(ingredientModel){
         var ingredientView = new IngredientView({model: ingredientModel});
         that.$el.append(ingredientView.render().el);
      });
      return this;
   }
});
