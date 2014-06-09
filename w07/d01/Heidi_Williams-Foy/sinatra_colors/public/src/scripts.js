function showPalette(e) {
	debugger;
	var colors = $(this).data('colors').split(',');
	$('.palette').html('');
	$.each(colors, function(index, color) {
		var colorDiv = $('<div>').css({})
		'width': 100px,
		'height': 100px,
		'background-color': '#' + color,
		'display': 'inline-block',
		'margin': '10px'
	});
	$('.palette').append(colorDiv);
	});
}


$(function(){  
	$('.color-generator').on('click', function(){
		function errorCallback(data) {
			console.log(data);
		}
		function succcessCallback(colorPalettes){
			var palettes = $('.palettes').html('');
			$.each(colorPalettes, function(index, colorPalette){
			var paletteButton = $('<button>').html(colorPalette.title);
			paletteButton.data('colors', colorPalette.join(''))
			paletteButton.on('click', showPalette)
			palettes.append(paletteButton);
            
			});
			console.log(colorPalette.id);
		}
		$.ajax({
		url: '/palettes.json', 
		success: successCallback,
		error: errorCallback

	});
	});





/*$(function(){  

	$.ajax({
		url: '/palettes.json', 
		success: function(data){

			for (var i = 0; i < data.length; i++) {
				// console.log( data[i].colors );
				var colorPalette = data[i];
				var newDiv = $("<div>").addClass("outer-div");
				$(colorPalette).each(function (index, element) {
					individualColor = $("<div>").addClass("color");
					individualColor.css("backgroundColor", "#"+element.colors[index]); // only using the first of each pallete
					console.log(element.colors[index]);
					individualColor.css("width", '5em');
					individualColor.css("height", '5em');
					individualColor.css("display", "inline-block");
					$(individualColor).appendTo(newDiv);
				});

				$('body').append(newDiv);
			};

		} 
	});

});

// function findColor (palette) {
// 	var element = $.each(function( i, palette ){
// 	  console.log( palette );
// 	});
// 	return element;
// }




// function setEventHandlers(){
//   var button = $('.random-palettes')[0];
//   $(button).click(function(){console.log("something is happenging");});
// }

// $(function(){
//   setEventHandlers();
// });

// var colourloversApi = {
//   search: function(palette, callback){
//   this.request(palette, 's', callback);
//   return this;
//  },
//   lookup: function(imd, callback){
//   this.request(imdbID, 'i', callback);
//   return this;
//  },
//   url: function(query, parameter){
//   return 'http://www.colourlovers.com/api/palettes/new?format=json' + parameter + '=' + query;
//  },
//   request: function(query, parameter, callback){
//     var callback = callback || function(data){console.log(data)};
//     var url = this.url(query, parameter)
//       $.ajax({
//      	url: url,
//      	dataType: 'json',
//      	success: callback