$(function(){
  console.log("You're learning...")
})

//MODEL - saved
function savedKitten(kittenJSON){
  this.id = kittenJSON.id;
  this.url = kittenJSON.url;
  return this;
}

var newKitten = {

  getURL: function(){
    var randomWidth = Math.floor(Math.random() * 1000) + 200;
    var randomHeight = Math.floor(Math.random() * 500) + 200;
    var url = 'http://www.placekitten.com/'+randomHeight+'/'+randomWidth;
    return url;
  },

//VIEWS
  showKitten: function(){
    url = newKitten.getURL()
    $('.randomImage').html("");
    console.log('kitten coming!');
    var image = $('<img>').attr('src', url).addClass("small-12 columns kitten");
    $('.randomImage').append(image)
    return url;
    debugger
  }
};

//CONTROLLER
function setEventHandlers(button){
  var getRandomKitten = $('.getRandomKitten')[0];
  $(button).click(function(){
      var url = newKitten.getURL();
      var elem = newKitten.showKitten();

  });
}


//ON LOAD
$(function(){
  $('.dismiss').on('click', setEventHandlers($('.dismiss')))
  $('.getRandomKitten').on('click', setEventHandlers($('.getRandomKitten')))
})
























// $(function(){
//   var kitten = $('<img>').attr('src', 'http://placekitten.com/300/200')
//       .addClass('newKitten')
//   $('randomImage').append(kitten);
//   kitten.appendTo($('randomImage')).hide().fadeIn(3000);
// })





// KittenCollector.prototype.fetchSaved = function(){
//   var that = this;
//   $ajax({
//     url: '/kittens',
//     dataType: 'json',
//     sucess: function(data){
//       for (index in data){
//         var element = data[index];
//         var newKitten = new Kitten(element);
//         that.models[element.id] = newKitten;
//       }
//     }
//   })
// }


// // READY ON
// $(function(){
// })
