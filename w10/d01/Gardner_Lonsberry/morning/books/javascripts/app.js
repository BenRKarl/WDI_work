var Book = Backbone.Model.extend({
  defaults:{
    title: 'n/a',
    author: 'n/a'
  }
});


// var BookPainter = Backbone.View.extend({
//   tagName: 'span',
//   render: function(){
//     this.$el.empty();
//     this.$el.html(this.model.get('title'));
//     return this;
//   }
// });

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

  var classicBook = new Book({title: 'The Lichard in the Rye', author: 'Lichard DeGray'});
    
  
  // Painting on existing DOM element

  var classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
  classicBookPainter.render();

})