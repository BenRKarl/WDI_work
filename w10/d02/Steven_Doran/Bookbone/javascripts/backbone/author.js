
// ******* AUTHOR MODEL *******

var Author = Backbone.Model.extend({
   initialize: function(){
      this.set('books', new BookCollection());
   },
   defaults: {
      name: 'anonymous'
   }
});


// ******* AUTHOR COLLECTION *******

var AuthorCollection = Backbone.Collection.extend({
   model: Author
});


// ******* AUTHOR VIEW *******

var AuthorView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.model, 'all', this.render);
   },   
   tagName: 'li',
   template: _.template($("#author-template").html()),
   render: function(){
      var that = this;
      var html = (this.template(this.model.attributes));
      this.$el.html(html);

      var bookListView = new BookListView({
         collection: this.model.get('books'),
         el: this.$el.find('.author-books')
      });
      bookListView.render();

      this.$el.find('form').on('submit', function(e){
         e.preventDefault();
         var titleField = that.$el.find('input');
         var newTitle = titleField.val();
         titleField.val('');
         that.model.get('books').add({title: newTitle});
      })
      return this;
   },
   // events: {
   //    "click button": "removeAuthor",
   //    "mouseover": "fadeSome",
   //    "mouseleave": "fadeNone"
   // },
   // removeAuthor: function(){
   //    this.model.destroy();
   //    this.remove();
   // },
   // fadeSome: function() {
   //    this.$el.css('opacity', 0.2);
   // },
   // fadeNone: function() {
   //    this.$el.css('opacity', 1);
   // }
});


// ******* AUTHOR LIST VIEW *******

var AuthorListView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.collection, 'all', this.render);
   },
   tagName:'ul',
   render: function(){
      var that = this;
      this.$el.empty();
      _.each(this.collection.models, function(authorModel){
         var authorView = new AuthorView({model: authorModel});
         that.$el.append(authorView.render().el);
      });
      return this;
   }
});


