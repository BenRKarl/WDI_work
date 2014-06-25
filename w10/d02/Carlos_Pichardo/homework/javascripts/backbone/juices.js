// Model

var JuiceModel = Backbone.Model.extend({
	initialize: function(){
		this.set('ingredients', new IngredientCollection());
	}
});




// Collection

var JuiceCollection = Backbone.Collection.extend({
  model: JuiceModel
});



// Views

JuiceView = Backgone.View.extend({
	initialize: function(){
		this.listenTo(this.model, 'all', this.render)
	},
	tagName: 'ul',
	template: _.template( $('#juices-template').html()),
	render: function(){
		var that = this;
		this.$el.empty();
		this.$el.html( this.template( this.model.attributes ) )
		
		var views = new IngredientListView({collection: this.model.get('ingredients'), el: this.$el.find('.ingredients')})
		views.render();

		this.$el.find('form').on('submit', function(e){
			e.preventDefault();
			var nameField = that.$el.find('input[name="name"]');
			var name = nameField.val();
			nameField.val('');
			that.model.get('ingredients').add({name: name})
		})

		return this;
	}


});



JuiceListView = Backbone.View.extend({
	initialize: function({
		this.listenTo(this.collection, 'all', this.render)
	})
	render: function(){
		var that = this;
		this.$el.empty();
		_.each(this.collection.models, function(e){
			var juiceView = new JuiceView({model: e});
			that.$el.append( authorView.render().el )
		})
		return this;
	}
});


var coconut = new Ingredient({name: 'coconut', amount: 2});
var blueberries = new Ingredient({name: 'blueberries', amount: 20});
var oil = new Ingredient({name: 'coconut oil', amount: 5});


var healthy = new IngredientCollection();

healthy.add(coconut);
healthy.add(blueberries);
healthy.add(oil);

// Juice Model

var healthyChoice = new JuiceModel();

healthyChoice.set('ingredients', healthy);


