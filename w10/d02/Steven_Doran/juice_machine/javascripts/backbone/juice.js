
// *** JUICE MODEL ***

var Juice = Backbone.Model.extend({
   initialize: function() {
      this.set('ingredients', new IngredientCollection());
   },
   defaults: {
      name: ''
   }
});


// *** JUICE COLLECTION ***

var JuiceCollection = Backbone.Collection.extend({
   model: Juice
});


// *** JUICE VIEW ***

var JuiceView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.model, 'all', this.render);
   },
   tagName: 'li',
   template: _.template($('#juice-template').html()),
   render: function(){
      var that = this;
      var html = (this.template(this.model.attributes));
      this.$el.html(html);
      
      var ingredientListView = new IngredientListView({
         collection: this.model.get('ingredients'),
         el: this.$el.find('.juice-ingredients')
      });
      ingredientListView.render();

      this.$el.find('form').on('submit', function(e){
         e.preventDefault();
         
         var nameField = that.$el.find('.ingredient-name');
         var newName = nameField.val();
         nameField.val('');
         
         var amountField = that.$el.find('.ingredient-amount');
         var newAmount = amountField.val();
         amountField.val('');

         that.model.get('ingredients').add({name: newName, amount: newAmount});
      })
      return this;
   }
});


// *** JUICE LIST VIEW ***

var JuiceListView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.collection, 'all', this.render);
   },
   tagName: 'ul',
   render: function(){
      var that = this;
      this.$el.empty();
      _.each(this.collection.models, function(juiceModel){
         var juiceView = new JuiceView({model: juiceModel});
         that.$el.append(juiceView.render().el);
      });
      return this;
   }
})

