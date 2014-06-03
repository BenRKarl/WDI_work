
function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){
    var callback = callback || function(data){
      console.log(data);
    };
    var url = "/palettes.json";
     colorWheel = $.ajax({   // shitty global variable
      url: url,
      success: callback
    }).done(function(data){
    });
  return this;
  })
}

// $('.create-palettes').onclick=
function colorBox(){
  var titleEl = $(''); //stil todo?
    // for (var j = 0; j < colorWheel.responseJSON[j].length; j++){
      for (var i = 0; i < colorWheel.responseJSON[i].colors.length; i++){
        var bgColor = '#' + colorWheel.responseJSON[i].colors[i];     //only iterates through first color JSON, but it's a start
        // var boxEl = $('<div>').html(colorWheel.responseJSON[i].title).addClass('color-name');
        var divEl  = $('<div>').css('backgroundColor', bgColor).addClass('cell');

        $('.color-container').append(divEl);
      }

}


//   for (var i = 0; i < colorWheel.responseJSON[0].colors.length; i++){
//     var colorEl = $('<div>'.attr(colorWheel.responseJSON[0].colors[i])
//     $('.color-box').append(colorEl);
// }

//   var title =$('<div>' + colorJson[0].title + '</div>')
//   $('.color-container')


// need callback to run colorBox() after JSON is received.  set for 2nd click?
$(function(){
  setEventHandlers();

});
