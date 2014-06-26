var Book = Backbone.Model.extend({});

var BookView = Backbone.View.extend({
  tagName: 'span',
  template: _.template('<div><h1><%= title %></h1><h2><%= author %></h2></div>'),
  render: function(){
    this.$el.empty();

    // var modelAttributes = this.model.attributes;
    // var renderedTemplate = this.template( modelAttributes );
    // this.$el.html( renderedTemplate );

    this.$el.html(this.template(this.model.attributes ) )

    return this


  }
})

var book =
