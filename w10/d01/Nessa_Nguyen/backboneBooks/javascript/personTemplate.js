var Person     = Backbone.Model.extend({});
var PersonView = Backbone.View.extend({
  template: _.template('<div><%= name %>, <%= age %></div>'),
  render: function() {
    var modelAttributes = this.model.attributes;
    var renderedTemplate= this.template(tmodelAttributes);
    this.$el.html(renderedTemplate);
    return this;
  }
});
var bod = new Person({name: 'Katthew Bod', age: 3});
var bodPainter = new PersonView({model: bod});

/**/
var BookModel = Backbone.Model.extend({});
var BookView = Backbone.View.extend({
  template: _.template('<h2><%= title %></h2>, <h3><%= author %></h3>'),
  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
  },
  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.attributes));
    return this;
  }
});

var newBook;
var newBookView;

$(function() {
  newBook = new BookModel({title: 'Eyes wide shut', author: 'Kimberly Jackson'});
  newBookView = new BookView({model: newBook});
  $('body').append(newBookView.render.$el);
});
