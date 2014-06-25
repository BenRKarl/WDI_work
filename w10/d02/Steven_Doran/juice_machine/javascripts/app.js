
//  *** ON LOAD AND STUFF***

var juiceCollection;
var juiceListView;

$(function(){
   juiceCollection = new JuiceCollection();
   juiceListView = new JuiceListView({
      collection: juiceCollection,
      el: $('.juice-counter')
   });

   $('.juice-form').on('submit', function(e){
      e.preventDefault();
      var juiceNameField = $('.juice-name');
      var juiceName = juiceNameField.val();
      juiceNameField.val('');
      juiceCollection.add({name: juiceName});
   })


})
