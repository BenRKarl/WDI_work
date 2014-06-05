console.log('Hey, There')

// <input type="text" id="input-field" placeholder="Enter text here">
// <h1 id='h1'></h1>



$(function(){
  $('#input-field').on('keyup', function(){
    var text = ($(this).val());
    $('h1').text(text);
    $('h1').css('font-size',($('h1').text().length)+"px"
    );
  });
})


//refactored
// $(function(){
//   $('#input-field').on('keyup', function(){
//     var text = ($(this).val());
//     $h1El = $('h1');
//     $('$h1El').text(text);
//     $h1El.css('font-size', text.length +"px");
//   });
// })
