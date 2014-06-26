

var Juice = Backbone.Model.extend({});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  template: _.template($('#juice_template').html()),
  render: function() {
    this.$el.html(this.template({juice: this.model.toJSON()}));
    currRecipeView = new RecipeView({collection: this.model.get('recipe'), el: this.el.firstElementChild});
    this.$el.append(currRecipeView.render().el)
    return this;
  }
});


var JuiceListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice) {
      var juiceView = new JuiceView({model: juice});
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});
