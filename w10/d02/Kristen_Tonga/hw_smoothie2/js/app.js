// **** PAGE LOAD ****
$(function(){
  console.log("sigh and let go... ")

  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $('.juice-collection')
  });

  var rad = new Juice({name: 'Rad Rool'});
  // rad.get('ingredient').add({ingredient: 'radish'});
  // rad.get('ingredient').add({ingredient: 'rutabaga'});
  // rad.get('ingredient').add({ingredient: 'rasberry'});
  var radView = new JuiceView({model: rad});
  $('.juice-test').append(radView.render().el);
  juiceCollection.add(rad)

  $('.new-juice').on('submit', function(e){
    e.preventDefault();
    var nameField = $('.juice-name');
    var juiceName = nameField.val();
    nameField.val('')
    juiceCollection.add({name: juiceName});
  })


})
