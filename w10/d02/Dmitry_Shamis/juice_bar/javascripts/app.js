var juiceCollection;
var juiceListView;

$(function() {
  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $('#juices-list')
  });

  $('.new-juice').on('submit', function(e) {
    e.preventDefault();
    var juiceField = $('.juice-name');
    var juiceName = juiceField.val();
    juiceField.val('');
    juiceCollection.add({name: juiceName})
  })
})
