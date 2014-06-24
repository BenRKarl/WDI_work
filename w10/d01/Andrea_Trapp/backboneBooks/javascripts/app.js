
// $(function(){
//   var book = {title: 'Secrets of Backbone js', author: 'Kathew Bod'};
//   var BackboneBookFunction = Backbone.Model.extend(book);

//   // var BackboneBookFunction = Backbone.Model.extend({});
//   var Book = new BackboneBookFunction();

// });


var Book = Backbone.Model.extend({
  defaults:{
    title: 'n/a',
    author: 'n/a'
  }
});

// var BookPainter = Backbone.View.extend({ // by default it has a div
//   tagName: 'span',
//   render: function(){
//     this.$el.empty();

//     var titleH2 = $('<h2>').html(this.model.get('title'));
//     var authorH3 = $('<h3>').html(this.model.get('author'));

//     this.$el.append(titleH2);
//     this.$el.append(authorH3);

//     return this;
//   }
// });

// View above refactored with _.template:
var BookPainter = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render);
  },
  tagName: 'span',
  template: _.template('<h2><%= title %></h2><h3><%= author %></h3>'),
  render: function(){
    this.$el.empty();

    var modelAttributes = this.model.attributes;
    var renderedTemplate = this.template( modelAttributes );
    this.$el.html( renderedTemplate );

    // this.$el.html( this.template( this.model.attributes ) )
    return this;
  }
})


var classicBook;
var classicBookPainter;



$(function(){

  // var newBook = new Book();
  classicBook = new Book({title: 'The Lichard in the Rye', author: 'Lichard DeGray'});


  // var classicBookPainter = new BookPainter(); // classicBookPainter.el --> <span></span>
  // classicBookPainter.render();
  // $('.book-sock').html(classicBookPainter.el); // adding element to the DOM

  // vs.

  // painting on existing DOM element
  classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
  classicBookPainter.render();




});




// by default it has a div
// classicBookPainter
// child {cid: "view3", $el: jQuery.fn.init[1], el: span, constructor: function, tagName: "span"…}
// classicBookPainter.el
// <span>​</span>​
// classicBookPainter.el.innerHTML = "from Matts talk";
// "from Matts talk"
// classicBookPainter.$el.append('happy');