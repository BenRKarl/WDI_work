
// Model

// This creates a constructor function
var Book = Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    author: 'n/a'
  }
});


// View

// var BookPainter = Backbone.View.extend({
//   tagName: 'span',
//   render: function(){
//     this.$el.empty();
//     var titleH2 = $('<h2>').html(this.model.get('title'));
//     var titleH3 = $('<h3>').html(this.model.get('author'));
//     this.$el.append(titleH2);
//     this.$el.append(titleH3);

//     // this.$el.html(this.model.get('title'));
//     return this;
//   }
// })

var BookPainter = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render)
  },
  tagName: 'span',
  template: _.template('<h2><%= title %></h2><h3><%= author %></h3>'),
  render: function(){
    this.$el.empty();
    // var titleH2 = $('<h2>').html(this.model.get('title'));
    // var titleH3 = $('<h3>').html(this.model.get('author'));
    // this.$el.append(titleH2);
    // this.$el.append(titleH3);
    this.$el.html(this.template(this.model.attributes))
    // this.$el.html(this.model.get('title'));
    return this;
  }
})



$(function(){
  // var classicBookPainter = new BookPainter();
  // classicBookPainter.render();
  // $('.book-sock').html(classicBookPainter.el);

  var classicBook = new Book({title: 'The Lichard in the Rye', author: 'Lichard DeGray'});

  // Painting on existing DOM element // setting the el says 'hey BookPainter, forget tagName span and that's the element over there'
  var classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
  classicBookPainter.render();

  var Person = Backbone.Model.extend({});

  var PersonView = Backbone.View.extend({
    template: _.template('<div><h1><%= name %></h1><h2><%= age %></h2></div>'),
    render: function(){
      this.$el.html(this.template(this.model.attributes))
      return this
    }
  })

  var bod = new Person({name: 'Kathew Bod', age: 3});
  var bodPainter = new PersonView({model: bod});

})

// classicBookPainter.el.innerHTML="From Matt Talk"

// classicBook.attributes returns the object that you can user to access attributes



var MonkeyPainter = Backbone.View.extend({});
bodPainter = new MonkeyPainter();

bodPainter.el
bodPainter.$el
bodPainter.$el.html('Coool')



