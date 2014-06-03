
// var omdbApi = {
//   search: function(title, callback){    
//     $.ajax({url: "http://www.omdbapi.com/?s="+title, 
//       success: function(data){
//         console.log(data)
//       }
//     })
//   },

//   lookup: function(imdbID, callback){
//     $.ajax({url: "http://www.imdb.com/?i="+imdbID, 
//       success: function(data){
//         console.log(data)
//       }
//     })
//   }
// }


// $(function(){
//   console.log('Ready to go')
// }) 



// http://www.imdb.com/title/tt0431420/


///////////////////////   code above refactored    ////////////////////////////


// var omdbApi = {
//   search: function(title, callback){    
//     // $.ajax({
//     //   url: "http://www.omdbapi.com/?s="+title, 
//     //   success: callback
//     // })
//     this.request(title, 's', callback);
//   },

//   lookup: function(imdbID, callback){
//     // $.ajax({
//     //   url: "http://www.imdb.com/?i="+imdbID, 
//     //   success: callback
//     // })
//     this.request(imdbID, 'i', callback);
//   },
//   request: function(query, parameter, callback){
//     callback = callback || function(data){console.log(data)};
//     $.ajax({
//       url: "http://www.omdbapi.com/?"+parameter+'='+query, 
//       success: callback
//     })
//   }
// }


// // to test the code above, put this into the javascript console:
// // omdbApi.search('star wars', function(data){console.log(data)})
// omdbApi.search('star wars')

// $(function(){
//   console.log('Ready to go!')
// }) 



///////////////////////   Andrew's version    ////////////////////////////

// omdbApi is a Library containing definitions for functions that can be 
// called by keys

var omdbApi = {
  search: function(title, callback){
    this.request(title, 's', callback);    
    return this;
  },
//   search: function(title, callback){
//     this.request(title, 's', callback);  
//     var results = data['search']
//     return this;
//   },
  lookup: function(imdbID, callback){
    this.request(imdbID, 'i', callback);
    return this;
  },
  url: function(query, parameter){
      return  'http://www.omdbapi.com/?' + parameter + '=' + query;
  },
  request: function(query, parameter, callback){
    var callback = callback || function(data){
                                console.log(data);                                
                                };
    var url = this.url(query, parameter)
    $.ajax({
      // these are so-called key-values (or key-value pairs)
      url: url,
      dataType: 'json',
      success: callback
      //fail: console.log("search failed ...")
    })
    return this;
  }
}

/// this :

// $(function(){
//   // we enclose omdbApp.search in a function to create a "closure" that refers to the original "this"-object
//   // whenever submit is fired the it passes an eventObject (e) to the function 
//   $('#search-form').on('submit', function(e){    
//     e.preventDefault();
//     console.log('searching ...');
//     omdbApi.search($('#new-search-field').val());
//   });
// })


/// or this:

// $(function(){
//   $('.movies .search').on('submit', function(e){
//     e.preventDefault();
//     console.log('searching ...');

//     // $(this) wraps the DOM-Node ".movies .search" with jQuery
//     // var userInput = $(this).find('input[name="movie-search"]');
//     // or we can write this (insteach of a jQuery wrapped DOM-Node):
//     var userInput = $('.movies .search input[name="movie-search"]');

//     var query = userInput.val();
//     omdbApi.search(query);
//   });
// })

/// even better this:


// global / general input manager outside Library and isready-function

var inputManager = {
  getTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text;
  }
};

 //  <div>
 //    <ul class="search-results" data-name='...'>
 //    </ul>
 //  </div>
 // data-name is a hidden piece that takes in the info of the imdbID
 // .... addClass('film').data('imdbID', movieArray[i].imdbID);


 function updatePoster(movieData){
   $('.poster-image').attr('src', movieData.Poster);
 }

function displaySearchResults(data){

  var movieArray = data.Search;
      for (var i = 0; i < movieArray.length; i++){
    
    var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

    movieLi.on('click', function(e){
      // console.log( $(e.target).data('imdbID'))
      var imdbID = $(e.target).data('imdbID');
      omdbApi.lookup(imdbID,updatePoster); // instead of the following 2 lines, the setting of img is separated
      // omdbApi.lookup(imdbID, function(movieData){
      //   $('.poster-image').attr('src', movieData.Poster);
      })
    });
    $('.search-results').append(movieLi);
  };

}

 

// isready-function

$(function(){

  $('.movies .search').on('submit', function(e){
    e.preventDefault();
    var query = inputManager.getTextInput('.movies .search input[name="movie-search"]');
    omdbApi.search(query, displaySearchResults);
    // omdbApi.search(query, function(data){
    //   var movieArray = data.Search;
    //   for (var i = 0; i < movieArray.length; i++){
    //     console.log(movieArray[i].Title);
    //     var movieLi = $('<li>').html(movieArray[i].Title).addClass('film');
    //     $('.search-results').append(movieLi);
    //   };
    // });   

  });

})


// http://www.imdb.com/title/tt0431420/
// var stone cold id = tt0431420

omdbApi.lookup('tt0431420', function(data){
  console.log(data.Title);
  console.log(data.Plot);
  $('.header-title').html(data.Title);

  // testing is a GLOBAL variable, needed to have access to it in the javascript console
  //testing = data;

  // THIS STARTS THE JAVASCRIPT DEBUGGER, BUT ONLY IF THE JAVASCRIPT CONSOLE IS OPEN IN CHROME !!!!
  // debugger;
})

// omdbApi.lookup('tt0431420');



// all movie titles go in the html list as li-elements
// here is the result from the console (to see, how the data is organized):

// omdbApi.search("stone cold")
// Object {search: function, lookup: function, url: function, request: function}
// Object {Search: Array[10]}
// Search: Array[10]
// 0: Object
// Title: "Stone Cold"
// Type: "movie"
// Year: "1991"
// imdbID: "tt0102984"
// __proto__: Object
// 1: Object
// Title: "Jesse Stone: Stone Cold"
// Type: "movie"
// Year: "2005"
// imdbID: "tt0431420"
// __proto__: Object
// 2: Object
// 3: Object
// 4: Object
// 5: Object
// 6: Object
// 7: Object
// 8: Object
// 9: Object
// length: 10
// __proto__: Array[0]
// __proto__: Object

