var GutenbergApp = GutenbergApp || {Models: {}, Views: {}, Collections: {}}

GutenbergApp.initialize = function(){
  var authors = new GutenbergApp.Collections.AuthorCollection();

  var authorsView = new GutenbergApp.Views.AuthorListView({
    collection: authors,
    el: $('author-lounge')
  });

  authors.fetch({success: function(){
    authorListView.render()
  }});

};

$(function){
  GutenbergApp.initialize();
}
