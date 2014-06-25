$(function(){
  var juice = new Juice();
  strawberry = new Ingredient({name: 'strawberry', amount: 12});
  juice.on('add', function(){console.log('something added')});
  juiceCollection.add(strawberry);
  juiceCollection.on('remove', function(){console.log('removed')});
  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  juice.add(cabbage);
  juiceListView = new JuiceListView({collection: juice, el: $('#new-juice')});
  var tumeric = new Ingredient({name: "tumeric", amount: 6});
  juiceListView.collection.add(tumeric);
  juice1 = new Juice({name: 'One', juice: juice});
  juiceView1 = new JuiceView({model: juice1});
  juices = new JuiceCollection();
  juicesView = new JuiceListView({collection: juices, el: $('#juices')});
  juices.add(juice1);
  juice2 = new Juice({name: 'Two', juice: juice});
  juices.add(juice2);
});

var juiceCollection;
var juiceListView;
var juice1;

$(function(){
  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $('.juice-bar')
  });
  $('.new-juice').on('submit', function(e){
    e.preventDefault();
    var nameField =  $('.juice-name');
    var juiceName = nameField.val();
    nameField.val('')
    juiceCollection.add({name: juiceName});
  })
})
