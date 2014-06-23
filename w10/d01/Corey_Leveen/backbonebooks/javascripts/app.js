
// Model
var Book = Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    author: 'n/a'
  }
});

// View
var MonkeyPainter = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, 'change', this.render)
  },
  template: _.template('<h1><%= title %></h1><h2><%= author %></h2>'),
  render: function(){
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) );
    // for method chaining
    return this;
  }
});

$(function(){
  var classicBook = new Book({title: 'The Lichard in the e', author: 'J.D. Grayer'})

    // 2nd way to assign els
  var classicBookPainter = new MonkeyPainter({el: $('.book-sock'), model: classicBook});
  // the reason why el is used instead of $el is because that's how it works. jQuery uses $el to refer
  // to the el attribute, so $el is like a pseudo-attribute.
  classicBookPainter.render();
})
