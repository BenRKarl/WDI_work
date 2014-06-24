var Person = Backbone.Model.extend({});

var PersonView = Backbone.View.extend({
  template: _.template("<div><h1><%= name %></h1><h2><%= age %></h2></div>"),
  render: function(){
    var modelAttributes = this.model.attributes;
    var renderedTemplate = this.template(modelAttributes);
    this.$el.html( renderedTemplate );

    return this;

  }
})

var bod = new Person({ name: 'Kathew Bod', age: 3});
var bodPainter = new PersonView(model: bod);


var Book = Backbone.Model.extend({});

var BookView = Backbone.View.extend({
  template: _.template("<div><h1><%= title %></h1><h2><%= author %></h2></div>");
  render: function(){
    var modelAttributes = this.model.Attrubutes;
    var renderedTemplate = this.template( modelAttributes );
    this.$el.html( renderedTemplate );

    return this;
  }
})

var myBook = new Book({title: "Dune", author: "Frank Herbert"});
var bookPainter = new BookView(model: myBook);