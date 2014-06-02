function getPalletes(callback){
  // var callback = callback || function(data){console.log(data[7])};
    $.ajax({
      url: '/palettes.json',
      dataType: 'json',
      success: callback
    })
    
    return this;
}

function gardner(data){
 $.each(data, function(index, palette){
    var divPaletteHolder = $('<div>');
    var mainDiv = $('.palette');
    $(mainDiv).append(divPaletteHolder);
    $.each(palette.colors, function(index, color){ 
      var divColorHolder = $('<div>');
      var currentHex = "#" + color;
      $(divColorHolder).css("background-color", currentHex);
      $(divPaletteHolder).append(divColorHolder);
      $(divColorHolder).css({
        "height" : "40px",
        "width" : "40px",
        "display" : "inline-block"
         });
    
    });
        // $(palette.title).html("palette-title", title);
        // var paletteTitle = $('<p>');
 });
}
function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){
  getPalletes(gardner);    
  });
}



$(function(){
  setEventHandlers();
});




















// var colorAPI = {
//   search: function(title, callback){
//     this.request(title, callback);
//     return this;
//   },
//   url: function(query, parameter){
//     return 'http://www.colourlovers.com/api/colors/new?' + parameter + '=' + query;
//   }, 
//   request: function (query, parameter, callback){
//   var callback = callback || function(data){console.log(data)};
//   var url = this.url(query, parameter)
//     $.ajax({
//       url: 'palettes.json',
//       dataType: 'json',
//       success: callback
//     })
//     return this;
//   }
// }

// function displaySearchResults(data){
//   paletteArray = data.Search;
//   for (var i = 0; i < movieArray.length; i++) {
//     var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

//     movieLi.on('click', function(e){
//       var imdbID = $(e.target).data('imdbID');
//       omdbApi.lookup(imdbID, updatePoster)
//     })

//     $('.search-results').append(movieLi);
//   };
// }



// function setEventHandlers(){
//   var button = $('.random-palettes')[0];
//   $(button).click(function(){

//   });
// }


// $(function(){
  


//   $('.movies .search').on('submit', function(e){
//     e.preventDefault();
//     var query = inputManager.takeTextInput('.movies .search input[name="movie-search"]')
//     omdbApi.search(query, displaySearchResults);
//   })

// });


