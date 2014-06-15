function randomNumber() {
  return (Math.floor(Math.random() * 100) + 101)
}

$(function(){

  // console.log('main')

  $('#kitten').draggable()


  $('.not-meow').droppable({

    drop: function(e, dropped){
      dropped.draggable.fadeOut(3000);
      // $(this).animate({backgroundColor: 'red'}, 3000)
      //         .animate({backgroundColor: 'blue'}, 2000);

        var newUrl = 'http://www.placekitten.com/' + randomNumber() + '/' + randomNumber()
        console.log(newUrl)
        setTimeout(function(){$('#kitten').remove()}, 3000)
        var newKitten = $('<img>').attr('src', newUrl).attr('id', 'kitten').draggable()
        setTimeout(function(){$('#kitten-window').append(newKitten)}, 3001)
    }
  })

  $('.meow').droppable({

      drop: function(e, dropped){
        dropped.draggable.fadeOut(3000);
        // $(this).animate({backgroundColor: 'red'}, 3000)
        //         .animate({backgroundColor: 'blue'}, 2000);
        var newKittenURL = $('#kitten').attr('src')
        var newKitten = {url: newKittenURL}
          $.ajax({
            url: '/kittens',
            method: 'post',
            dataType: 'json',
            data: {kitten: newKitten},
            success: function(response){
              console.log(response)
              var newUrl = 'http://www.placekitten.com/' + randomNumber() + '/' + randomNumber()
              console.log(newUrl)
              setTimeout(function(){$('#kitten').remove()}, 3000)
              var newKitten = $('<img>').attr('src', newUrl).attr('id', 'kitten').draggable()
              setTimeout(function(){$('#kitten-window').append(newKitten)}, 3001)
            }
        })
        }
  })


})
