var Book =  Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    author: 'n/a'
  }
});
var BookView = Backbone.View.extend({
  intialize: function(){
    this.listenTo(this.model, 'change', this.render)
  },


  template: _.template("<div class='h2template'><h2><%= title %></h2><h3><%= author %></h3></div>"),
  render: function(){
    this.$el.empty
    var modelAttr = this.model.attributes;
    var renderedTemp = this.template(modelAttr);

    //$el's html should have the result of the templating function when passed the model's attributes
    this.$el.html(renderdTemp);
    // this.$el.html(this.template(this.model.attributes))

    return this;
  }
});

var bookieBook = new Book({title:'The Gatsby', author:'the F Scott'});
 var bookieBookPainter = new BookView({model: bookieBook});

// $(function(){

// var bookieBook = new Book({title:'The Gatsby', author:'the F Scott'});


// //painting on existing DOM element
//   var bookieBookPainter = new BookPainter({el: $('.book-sock'), model: bookieBook});
//   bookieBookPainter.render();


// })

