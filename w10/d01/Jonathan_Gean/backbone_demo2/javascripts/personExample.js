var Person = Backbone.Model.extend({});

var PersonView = Backbone.View.extend({
  template: _.template('<div><h1><%= name %></h1><h2><%= age %></h2></div>'),
  render: function(){
    this.$el.html(this.template( this.model.attributes ))
    this.$el.html(this.template( this.model.attributes ))
    return this
  }
})
