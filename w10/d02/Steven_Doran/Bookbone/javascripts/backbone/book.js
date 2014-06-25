
// ******* BOOK MODEL *******

var Book = Backbone.Model.extend({
   defaults: {
      title: ''
   }
});


// ******* BOOK COLLECTION *******

var BookCollection = Backbone.Collection.extend({
   model: Book
});


// ******* BOOK VIEW *******

var BookView = Backbone.View.extend({
   tagName: 'li',
   template: _.template($('#book-template').html()),
   render: function(){
      this.$el.empty();
      var html = (this.template(this.model.attributes));
      this.$el.html(html);
      return this;
   } 
});


// ******* BOOK LIST VIEW *******

var BookListView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.collection, 'all', this.render);
   },
   render: function(){
      var that = this;
      this.$el.empty();
      _.each(this.collection.models, function(bookModel){
         var bookView = new BookView({model: bookModel});
         that.$el.append(bookView.render().el);
      });
      return this;
   }
});

