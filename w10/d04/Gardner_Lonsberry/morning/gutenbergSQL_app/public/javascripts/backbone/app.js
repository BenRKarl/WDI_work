var GutenbergApp = GutenbergApp | Models: {}, Views: {}, Collections: {} };

GutenbergApp.initalize = function() {
  var authors = new GutenbergApp.Collections.AuthorsCollection();
  var authorsListView = new GutenbergApp.Views.AuthorsListView({
    collections: authors,
    el: $('.author-lounge')
  });
  authors.fetch();
};

$(function(){
  GutenbergApp.initalize();
})