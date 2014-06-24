var Book = Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    author: 'n/a'
  }
});

var BookPainter = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, 'change', this.render)
  },
  template: _.template('<div><h2><%= title %></h2><h3><%= author %></h3></div>'),
  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.attributes))
    return this;
  }
})

var classicBook;
var classicBookPainter;

$(function () {
  classicBook = new Book({title: 'The Lichard in the Rye', author: 'Lichard DeGray'});

  classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
  classicBookPainter.render();
})

