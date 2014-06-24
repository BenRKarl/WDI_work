// Model

var JuiceModel = Backbone.Model.extend({
	defaults:{
		vegetable: 'n/a',
		fruit: 'n/a',
		oil: 'n/a'
	}
});




// Collection

var JuiceCollection = Backbone.Collection.extend({
  model: JuiceModel
});



// Views

JuiceView = Backgone.View.extend({
	tagName: 'ul',
	render: function(){
		this.$el.html( this.get('vegetable') + ', ' + this.model.get('fruit') + ', ' + this.model.get('oil'))
		return this;
	}


});



JuiceListView = Backgone.View.extend({
	initialize: function({
		this.listenTo(this.collection, 'add', this.renderJuiceModel)
	})
	renderJuiceModel: function(model){
		model.view = new JuiceView({model: model});
		this.$el.prepend(mode.view.render().el);
	}
});

$(function(){
	var collections = new JuiceCollection;
	var sample_list_view = new JuiceListView({
		collection: collections,
		el: $('#juices')
	})

	collections.add({vegetable: 'carrots', fruit: 'blueberries', oil: 'coconut'});
})
