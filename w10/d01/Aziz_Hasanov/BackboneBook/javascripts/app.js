var Book = Backbone.Model.extend({
  defaults:{
    title: "Hunger Games"
  }
});

var BookPainter = Backbone.View.extend({
  tagName: "span",
  template: _.template("<h2><%= title %></h2>"),
  render: function() {
    this.$el.empty();
    // var titleH2 = $("<h2>").html(this.model.get("title"));
    // this.$el.append(titleH2);
    this.$el.html(this.template(this.model.attributes));
    return this;
  }
});

var classicBook = new Book({title: "Lego"});

$(function() {
  var classicBookPainter = new BookPainter({el: $(".book-sock"), model: classicBook});
  classicBookPainter.render();
})
