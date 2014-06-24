// ******* MODEL *******

var Author = Backbone.Model.extend({
   defaults: {
      name: 'anonymous'
   }
});


// ******* COLLECTION *******

var AuthorCollection = Backbone.Collection.extend({
   model: Author
});


// ******* VIEWS *******

var AuthorView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.model, 'all', this.render)
   },   
   tagName: 'li',
   template: _.template($("#author-template").html()),
   render: function(){
      var html = (this.template(this.model.attributes));
      this.$el.html(html);
      return this;
   },
   events: {
      "click button": "removeAuthor",
      "mouseover": "fadeSome",
      "mouseleave": "fadeNone"
   },
   removeAuthor: function(){
      this.model.destroy();
      this.remove();
   },
   fadeSome: function() {
      this.$el.css('opacity', 0.2);
   },
   fadeNone: function() {
      this.$el.css('opacity', 1);
   }
});


var AuthorListView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.collection, 'all', this.render)
   },
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




// ******* OTHER *******

var authorCollection;
var authorListView;

$(function() {
   
   authorCollection = new AuthorCollection();
   authorListView = new AuthorListView({
      collection: authorCollection,
      el: $('.street-side-table')
   });

   $('.author-form').on('submit', function(e) {
      e.preventDefault();
      var authorNameField = $('.author-name');
      var authorName = authorNameField.val();
      authorNameField.val('');
      authorCollection.add({name: authorName});
   })

})


