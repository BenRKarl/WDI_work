var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.initialize = function(){
  var authors         = new GutenbergApp.Collections.AuthorsCollection();
  var authorsListView = new GutenbergApp.Views.AuthorListView({
    collection: authors,
    el: $('.author-lounge')
  });

  authors.fetch({success: function(){
    authorsListView.render()
  }});

};


$(function(){
  GutenbergApp.initialize();
})
