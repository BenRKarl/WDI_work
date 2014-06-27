var GutenbergApp = GutenbergApp || { Models: {}, Collections: {}, Views: {} }

GutenbergApp.initialize = function(){
  var authors = new GutenbergApp.Collections.AuthorCollections();
  var authorListView = new GutenbergApp.Views.AuthorListView({
    collection: authors,
    el: $('.author-lounge')
  });

  authors.fetch({success: function(){
    authorListView.render()
  }});

  GutenbergApp.authors = authors;
  GutenbergApp.authorListView = authorListView;

};

$(function(){

GutenbergApp.initialize();


});