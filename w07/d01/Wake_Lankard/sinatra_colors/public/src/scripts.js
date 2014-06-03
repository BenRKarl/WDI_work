var sinatra_colors ={

  request: function(callback){
    callback = callback || function(data){console.log(data)};
   $.ajax({url: '/palettes.json', success: sinatra_colors.displayColors});
    //$.ajax({url: '/palettes.json', success: callback});
  },
  displayColors: function(data){
    var palatteArr = data;
    $.each(palatteArr, function(i,palatte){
      colorArr = palatte.colors;
      var palatteName = palatte.title;
      console.log(palatteName);
      var palatteElem = $('<div>')
                        .addClass('palatte')
                        .addClass(palatteName)
                        .css('margin', '5px')
                        .css('float','right');
                      //   .css('height', '100px')
                      //   .css('width', '100px')
                      //   .css('border-radius','50px');
                      // //  .css('background-color', "#" + colorArr[0]);
      
      
      $('.color-zone').append(palatteElem);

      $.each(colorArr, function(i,color){
        console.log(color);
        var colorElem = $('<div>')
                        .addClass('color')
                        .attr('title', '#' + color)
                        .css('background-color', '#' + color)
                        .css('height', '100px')
                        .css('width', '100px')
                        //.css('display','inline')
                        .css('border-radius','50px');
       $(palatteElem).append(colorElem);
      })
    })


  },
}




function setEventHandlers(){
  var button = $('.random-palettes')[0];
  //$(button).click(function(){console.log("something is happenging");});
  $(button).click(function(){sinatra_colors.request()});
}

$(function(){
  setEventHandlers();
});