var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.initialize = function(){

  var authors = new GutenbergApp.Collections.AuthorCollection();

  var authorsListView = new GutenbergApp.Views.authorsListView({
    collection: authors,
    el: $('.author-list')
  });

  authors.fetch({success: function(){
    authorsListView.render()
  }});

  GutenbergApp.authors = authors;
  GutenbergApp.authorListView = authorListView;
};

$(function(){
  GutenbergApp.initialize();
})
