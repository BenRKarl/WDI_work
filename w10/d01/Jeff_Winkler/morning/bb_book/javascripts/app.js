


var Book = Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    author: 'n/a'
  }
});



var BookPainter = Backbone.View.extend({
  tagName: 'span',
  render: function(){
    this.$el.empty();
    title = $('<h1>').html(this.model.get('title'));
    author = $('<h4>').html('by ' + this.model.get('author'));
    this.$el.append(title).append(author);
    return this;
  }

});

$(function(){

  var classicBook = new Book({title: 'The Lichman', author: 'L D G'});
  classicBookPainter = new BookPainter({el: $('.book'), model: classicBook});
  classicBookPainter.render();

});








