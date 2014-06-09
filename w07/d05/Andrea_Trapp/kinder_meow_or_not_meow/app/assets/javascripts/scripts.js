
// ************ Model *************
function Kitten(kittenJSON){
  this.url = kittenJSON.url;
  this.id = kittenJSON.id;
}

Kitten.prototype.create = function(url){  
   $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: url},
    success: function(){}
   })
}


// // ************ Model *************
// function Kitten(kittenJSON){
//   this.url = kittenJSON.url;
//   this.id = kittenJSON.id;
// }


// // ************ View *************
// function KittenView(model){
//   this.model = model;
//   this.el = undefined;
// }

// KittenView.prototype.render = function(){
//   var newElement = $('<li>').html(this.model.url);
//   this.el = newElement;
//   return this;
// }


// // ************ Collection *************
// function KittenCollection(){
//   this.models = {};
// }

// KittenCollection.prototype.add = function(kittenJSON){
//   var newKitten = new Kitten(kittenJSON);
//   this.models[kittenJSON.id] = newKitten; 
//   return this;
// }

// KittenCollection.prototype.create = function(paramObject){
//   var that = this;
//    $.ajax({
//     url: '/kittens',
//     method: 'post',
//     dataType: 'json',
//     data: {kitten: paramObject},
//     success: function(data){
//       that.add(data);
//     }
//    })
// }

// // KittenCollection.prototype.fetch = function(){
//   var that = this;
//   $.ajax({
//     url: '/kittens',
//     dataType: 'json',
//     success: function(data){
//       for (idx in data){
//         that.add(data[idx]);
//       }
//     }
//   })
// }


// // ************ Display function *************

// function clearAndDisplayKittenList(){

//   $('.kittens').html('');

//   for(idx in kittenCollection.models){
//     var kitten = kittenCollection.models[idx];
//     var kittenView = new KittenView(kitten);
//     $('.kittens').append(kittenView.render().el);
//   }
// }

// var kittenCollection = new KittenCollection();




$(function(){

  // ***** if Internet does NOT work, then use a static kitten pic from the assets  
  var kitten = $('#kitten_pic').draggable();

  // ****** if Internet works, then retrieve kitten pic from http://placekitten.com *****
  // var picWidth  = Math.floor((Math.random() * 100) + 100); 
  // var picHeight = Math.floor((Math.random() * 100) + 100);  
  // var url = "http://placekitten.com/"+picWidth+"/"+picHeight;
  // var kitten = $('<img>').attr('src', url).addClass('kitten').draggable();
  
  kitten.appendTo($('#kitten')).hide().fadeIn(3000);


  $('#not_meow').droppable({
    drop: function(e, dropped){
      //debugger;

      var picWidth  = Math.floor((Math.random() * 100) + 100); 
      var picHeight = Math.floor((Math.random() * 100) + 100);  
      var url = "http://placekitten.com/"+picWidth+"/"+picHeight;
      kitten = $('<img>').attr('src', url).addClass('kitten').draggable();
        
      kitten.appendTo($('#kitten')).hide().fadeIn(3000);

      $(this).animate({backgroundColor: 'white'}, 500).animate({backgroundColor: 'red'}, 1500);
      dropped.draggable.fadeOut(3000);
    }
  });

  $('#meow').droppable({
    drop: function(e, dropped){
      //debugger;

      var picWidth  = Math.floor((Math.random() * 100) + 100); 
      var picHeight = Math.floor((Math.random() * 100) + 100);  
      var url = "http://placekitten.com/"+picWidth+"/"+picHeight;
      kitten = $('<img>').attr('src', url).addClass('kitten').draggable();
        
      kitten.appendTo($('#kitten')).hide().fadeIn(3000);


      $(this).animate({backgroundColor: 'white'}, 500).animate({backgroundColor: 'green'}, 1500);
      dropped.draggable.fadeOut(3000);
      //kittenCollection.create({url: url});
      var newKitten = new Kitten({url: url});
      newKitten.create({url: url});
    }
  });

})


