// *** INGREDIENT ***

var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
   model: Ingredient
});

var IngredientView = Backbone.View.extend({
   tagName: 'li',
   template: _.template($('#ingredient-template').html()),
   render: function(){
      this.$el.html(this.template({ingredient: this.model.toJSON()}));
      return this;
   }
});

var IngredientListView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.collection, 'add', this.render);
      this.listenTo(this.collection, 'remove', this.render);
   },
   render: function(){
      var that = this;
      this.$el.empty();

      _.each(this.collection.models, function(ingredient){
         var ingredientView = new IngredientView({model: ingredient});
         that.$el.append(ingredientView.render().el);
      });
      return this;
   }
})

// *** JUICE ***

// var Juice = Backbone.Model.extend({
//    ingredients: IngredientCollection
// });

// var JuiceCollection = Backbone.Collection.extend({
//    model: Juice
// });

// var JuiceView = Backbone.View.extend({

//    template: _.template($('#juice-template').html()),
//    render: function(){

//       var juices = this.$el.html(this.template());
//       $('body').append(juices)   



//       var listView = new IngredientListView({collection: this.model.attributes.ingredients, el: this.template()})
//       listView.render();
//       return this;
//    }
// })

// var JuiceListView = Backbone.View.extend({
//    render: function(){
//       var that = this;
//       this.$el.empty();

//       _.each(this.collection.models, function(juice){
//          var juiceView = new JuiceView({model: juice});
//          that.$el.append(juiceView.render().el);
//       });
//       return this;
//    }
// })


//  *** ON LOAD ***

$(function(){
    juiceIngredients = new IngredientCollection();
   var strawberry = new Ingredient({name: 'strawberry', amount: 13});

   juiceIngredients.on('add', function(){console.log('something was added')});
   juiceIngredients.add(strawberry);

   juiceIngredients.on('remove', function(){console.log('something was removed')});
   // juiceIngredients.remove(strawberry);

   var cabbage = new Ingredient({name: 'cabbage', amount: 1})
   juiceIngredients.add(cabbage);

   var listView = new IngredientListView({collection: juiceIngredients, el: $("#ingredient-list")});
   var turmeric = new Ingredient({name: 'turmeric', amount: 30});
   juiceIngredients.add(turmeric);

   setTimeout(function(){
      juiceIngredients.remove(strawberry)
   },1500);

   //  grossJuice = new Juice({name: "Gross Juice", ingredients: juiceIngredients});
   //  goodJuice = new Juice({name: 'Good Juice', ingredients: juiceIngredients})
   //  juiceCollection = new JuiceCollection();
   // juiceCollection.add(grossJuice);
   // juiceCollection.add(goodJuice);

   // var collectionView = new JuiceListView({collection: juiceCollection, el: $("#ingredient-list")});
   // collectionView.render();


})
