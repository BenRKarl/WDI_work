var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.initialize = function () {
  var authors = new GutenbergApp.Collections.AuthorCol();
  var authorListView = new GutenbergApp.Views.AuthorListView({
    collection: authors,
    el        : $('.author-list')
  });

  authors.fetch({
    success: function() {
      authorListView.render();
    }
  });
};

$(document).ready( function() {
  GutenbergApp.initialize();
});
