$(function(){
  console.log("You're learning...")
})

//MODEL


//VIEWS


//CONTROLLER
function setEventHandlers(){
  var newButton = $('.getRandomKitten')[0];

  $(newButton).click(function(){
    $('.randomImage').html("")
    var randomWidth = Math.floor(Math.random() * 500) + 100;
    var randomHeight = Math.floor(Math.random() * 500) + 100;
    var url = 'http://www.placekitten.com/'+randomHeight+'/'+randomWidth;
    console.log('kitten coming!');
    var image = $('<img>').attr('src', url).addClass("small-12 columns kitten");
    $('.randomImage').append(image)
  });
}

// function createKittenImage(){
//   data.forEach(function(kitten, index){

//   })
// }


//ON LOAD
$(function(){
  setEventHandlers();
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
