// ** Model **
var Book = Backbone.Model.extend({
  defaults:{
    title: 'n/a',
    author: 'n/a'
  }
});

// ** View **
var BookPainter = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render)
  },
  tagName: 'span',
  template: _.template('<div><h1> <%= title %> </h1><h3> <%= author %> </h3></div>'),
  render: function(){
    this.$el.empty();
    // // this.$el.html(this.model.get('author'));
    // var titleH2 = $('<h2>').html(this.model.get('title'))
    // var authorH3 = $('<h3>').html(this.model.get('author'));
    // this.$el.append(titleH2);
    // this.$el.append(authorH3);
    // this.$el.html(this.model.get('title')).html(this.model.get('author'));

    // $el's html should have the
    //      result of the templating function
    //            passed the model's attributes
    this.$el.html( this.template (this.model.attributes) )

    return this;
  }
});



// var classicBook = new Book({title: 'The Lichard in the Rye', author: 'Lichard DeGray'});
var classicBook;
var classicBookPainter;



$(function(){


  // var classicBookPainter = new BookPainter();
  // classicBookPainter.render();
  // $('.book-sock').html(classicBookPainter.el);

// Painting on existing DOM element
  var classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
  classicBookPainter.render();    // .render(); defined on ln. 13

})
