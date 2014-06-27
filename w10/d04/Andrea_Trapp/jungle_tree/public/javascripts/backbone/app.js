// determines the definite load order of files
var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };


Bananapp.initialize = function(){

  var monkeyCollection = new Bananapp.Collections.MonkeyCollection();

  var monkeyListView = new Bananapp.Views.MonkeyListView({
    collection: monkeyCollection,
    el: $('.monkeys')  // ==> this connects the collection to the ul in index.html AND puts it on the page !!!! go to 2
  });

  monkeyCollection.fetch(); // ***   add monkeyCollection.fetch() for connecting Backbone with Rails   ***


   $('form.monkey-form').on('submit', function(e){
    e.preventDefault();
    var nameField = $('form.monkey-form input')
    var newName = nameField.val();
    nameField.val('');
    // monkeyCollection.add({name: newName}); 
    monkeyCollection.create({name: newName});    // ***   add --> create for connecting Backbone with Rails   ***
  });

};


$(function(){
  Bananapp.initialize();

  // // var monkey1 = new Bananapp.Models.Monkey({name: 'Lichard DeGray'});

  // // var monkey1View = new Bananapp.Views.MonkeyView({model: monkey1});
  // // monkey1View.render().el;



  // monkeyCollection = new Bananapp.Collections.MonkeyCollection();

  // // monkeyCollection.add({name: 'Lichard DeGray'});

  // monkeyListView = new Bananapp.Views.MonkeyListView({
  //   collection: monkeyCollection,
  //   el: $('.monkeys')  // ==> this connects the collection to the ul in index.html AND puts it on the page !!!! go to 2
  // });


  //  $('form.monkey-form').on('submit', function(e){
  //   e.preventDefault();
  //   var nameField = $('form.monkey-form input')
  //   var newName = nameField.val();
  //   nameField.val('');
  //   monkeyCollection.add({name: newName});    
  // });
  
})

// in the Browser's JavaScript Console
// -----------------------------------
// var demoMonkeys = new Bananapp.Collections.MonkeyCollection()
// undefined
// var monkeysPainter = new Bananapp.Views.MonkeyListView({collection: demoMonkeys})
// undefined
// demoMonkeys.add({name: "bobo"})
// child {cid: "c6", attributes: Object, collection: child, _changing: false, _previousAttributes: Object…}
// monkeysPainter.render().el



