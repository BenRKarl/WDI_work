$(function() {
  console.log("It's all connected");
});

var Book = Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    author: 'n/a'
  }
});

var BookPrinter = Backbone.View.extend({
  tagName: 'span',
  render: function(){
    this.$el.empty();
    this.$el.html('<h1>Book: ' + this.model.get('title') + '</h1><h3>' + this.model.get('author') + '</h3>' );
    return this;
  }
});

var BookView = Backbone.View.extend({
  // initialize: function(){
  //   this.ListenTo(this.mode, 'change', )
  // }
    tagName: 'span',
    template: _.template('<div><h1>Book: <%= title %></h1><h3><%= author %></h3>'),
    render: function(){
      this.$el.html( this.template( this.model.attributes ) )
      return this
    }
  })

var classicBook = new Book({title: 'Hunger Beckons'});
var secondBook = new Book({title: 'Hunger Satiated'});


$(function(){
  var classicBookPrinter = new BookPrinter({el: $('.book-sock'), model: classicBook});
  classicBookPrinter.render();

  var secondBookView = new BookView({el: $('.black-book-sock'), model: secondBook});
  secondBookView.render();
})

