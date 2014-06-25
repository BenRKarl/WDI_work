var juiceCollection;
var juiceListView;

$(function(){

  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection : juiceCollection,
    el : $('.juice-cart')
  });

  $('form.new-juice').on('submit', function(e){
    e.preventDefault();
    var juiceNameField = $('.juice-name');
    var juiceName = juiceNameField.val();
    juiceNameField.val('');
    juiceCollection.add( {name : juiceName} )
  })

})
