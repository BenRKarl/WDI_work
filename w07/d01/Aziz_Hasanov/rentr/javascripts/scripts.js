var omdbApi = {
  search: function(title, callback){
    this.request(title, 's', callback);
    return this;
  },
  lookup: function(imdbID, callback){
    this.request(imdbID, 'i', callback);
    return this;
  },
  url: function(query, parameter){
    return 'http://www.omdbapi.com/?' + parameter + '=' + query;
  },
  request: function(query, parameter, callback){
    var callback = callback || function(data){console.log(data)};
    var url = this.url(query, parameter)
    $.ajax({
      url: url,
      dataType: 'json',
      success: callback
    })
    return this;
  }
}

var inputManager = {
  takeTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text;
  }
};


function displaySearchResults(data) {
  var movieArray = data.Search;
  for (var i =0; i < movieArray.length; i++) {
    var movieLi = $("<li>").html(movieArray[i].Title).addClass("film").data("imdbID", movieArray[i].imdbID);

    movieLi.on("click", function(event) {
      var imdbID = $(event.target).data("imdbID");
      omdbApi.lookup(imdbID, function(data) {
        $(".poster-image").attr("src", data.Poster);
      });
    })

    $(".search-results").append(movieLi);
  };
}

$(function() {
  $('#searchForm').on('submit', function(event){
    event.preventDefault();
    var query = inputManager.takeTextInput('#searchForm input[type="text"]');
    omdbApi.search(query, displaySearchResults);
    // console.log(movieArray);
  });
})




// var omdbApi = {
//   search: function(title, callback) {
//     this.request(title, "s", callback);
//   },
//   lookup: function(imdbID, callback) {
//     this.request(imdbID, "i", callback);
//   },
//   request: function(query, param, callback) {
//     callback = callback || function(data) {console.log(data)};
//     // console.log("http://www.omdbapi.com/?" + param + "=" + query)
//     $.ajax({
//       url: "http://www.omdbapi.com/?" + param + "=" + query,
//       success: callback
//     })
//   }
// }

// // omdbApi.search('star wars', function(data){console.log(data)});

// $(function() {
//   $("#searchForm").on("submit", function(event) {
//     event.preventDefault();
//     var query = $("#searchForm".val());
//     omdbApi.search(query);
//   });
//   // console.log("ready to go");
// })

// var inputManager = {
//   getTextInput: function(movieSearchCssSelector) {
//     var userInput = $(movieSearchCssSelector);
//     var query = userInput.val();
//     userInput.val("");
//     // return text;
//   }
// }








/////////////////
// another way //
/////////////////

// var omdbApi = {
//   search: function(title, callback){
//     this.request(title, 's', callback);
//     return this;
//   },
//   lookup: function(imdbID, callback){
//     this.request(imdbID, 'i', callback);
//     return this;
//   },
//   url: function(query, parameter){
//       return  'http://www.omdbapi.com/?' + parameter + '=' + query;
//   },
//   request: function(query, parameter, callback){
//     var callback = callback || function(data){console.log(data)};
//     var url = this.url(query, parameter)
//     $.ajax({
//       url: url,
//       success: callback
//     })
//     return this;
//   }
// }
