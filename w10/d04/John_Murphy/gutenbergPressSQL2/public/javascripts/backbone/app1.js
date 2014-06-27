var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

var authors
var authorListView

GutenbergApp.initialize = function(){
  authors = new GutenbergApp.Collections.AuthorCollection();

  authorListView = new GutenbergApp.Views.AuthorListView({
    collection: authors,
    el: $('.author-lounge')
  });
  authors.fetch({
    success: function(){
      authorListView.render()
    }
  });

  // GutenbergApp.authors = authors;
  // GutenbergApp.authorListView = authorListView;
};



$(function(){

  GutenbergApp.initialize();

})
