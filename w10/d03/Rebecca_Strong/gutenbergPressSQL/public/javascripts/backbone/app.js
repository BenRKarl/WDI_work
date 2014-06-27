var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

 GutenbergApp.initialize = function(){
  var authors = new GutenbergApp.Collections.AuthorCollection();

  var authorListView = new GutenbergApp.Views.AuthorListView({
  collection: authors,
  el: $('.authors-lounge')
});

  authors.fetch({success: function(){
    authorListView.render()
  }});
};



$(function(){
GutenbergApp.initialize();

})
