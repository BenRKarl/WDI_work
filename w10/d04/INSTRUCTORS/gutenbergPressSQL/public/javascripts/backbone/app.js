var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

var GutenbergApp.initialize = function(){
  var authors = new GutenbergApp.Collections.AuthorsCollection();
  var authorsView = new GutenbergApp.Views.AuthorListView({
    collection: authors,
    el: $('.author-lounge')
  });

  authors.fetch();
};

$(function(){
  GutenbergApp.initialize();
})
