var aBathingApp = aBathingApp || { Models : {}, Collections : {}, Views : {} };

aBathingApp.initialize = function(){

  var monkeyCollection = new aBathingApp.Collections.MonkeyCollection();
  var monkeyListView = new aBathingApp.Views.MonkeyListView({
    collection : monkeyCollection,
    el : $('.monkey-house')
  });

  monkeyCollection.fetch();

  $('form.new-monkey').on('submit', function(e){
    e.preventDefault();
    var monkeyNameField = $('.monkey-name');
    var monkeyName = monkeyNameField.val();
    monkeyNameField.val('');
    monkeyCollection.create( {name : monkeyName} );
  })

};


$(function(){
  aBathingApp.initialize();
})
