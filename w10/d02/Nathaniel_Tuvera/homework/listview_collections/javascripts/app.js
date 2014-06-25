
var juiceCollection;
var juiceListView;

$(function(){

  juiceCollection  = new JuiceCollection();
  juiceListView    = new JuiceListView({
    collection: juiceCollection,
    el: $('#juice-list')
  });

  $('.juice-maker').on('submit', function(e){
    e.preventDefault();
    var juiceField = $('.juice-name');
    var juiceName       = juiceField.val();
    // $('#juice-name').val('');
    juiceCollection.add({name: juiceName});
    juiceListView.render()
  })

})

