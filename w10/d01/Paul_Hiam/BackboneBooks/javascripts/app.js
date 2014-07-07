var Book =  Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    author: 'n/a'
  }
});
var BookPainter = Backbone.View.extend({
  tagName: 'span',
  render: function(){
    this.$el.empty();

    var titleH2 = $('<h2>').html(this.model.get('title'));
    var authorH3 = $('<h3>').html(this.model.get('author'));

    this.$el.append(titleH2);
    this.$el.append(authorH3);

    return this;
  }
});


$(function(){

var bookieBook = new Book({title:'The Gatsby', author:'the F Scott'});


//painting on existing DOM element
  var bookieBookPainter = new BookPainter({el: $('.book-sock'), model: bookieBook});
  bookieBookPainter.render();


})

