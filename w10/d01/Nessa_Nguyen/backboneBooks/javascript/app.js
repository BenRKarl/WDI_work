var Book = Backbone.Model.extend({
  defaults: {
    title:  'n/a',
    author: 'n/a'
  }
});


var BookPainter = Backbone.View.extend({
  tagName: 'span',
  render: function() {
    this.$el.empty();
    this.$el.html('<h2>'+this.model.get('title')+'</h2>')
            .append('<h3>'+this.model.get('author')+'</h3>');
    return this;
  }
});

$(function() {
  var classicBook = new Book({title: 'Lichard in the Rye',
                           author: 'Lichard de Grey'});
  var classicBookPainter = new BookPainter({
    el: $('.book-sock'),
    model: classicBook
  });

  classicBookPainter.render();

var greatBook = new Book({title: 'Summertime in the Valley',
                          author: 'Michael Ward'});

var greatBookPainter = new BookPainter({
  model: greatBook
})

$('body').append(greatBookPainter.render().el);

});

