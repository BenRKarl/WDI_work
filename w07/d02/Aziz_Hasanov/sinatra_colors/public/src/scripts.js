function showPalette(elt) {
  var colors = $(this).data("colors").split(",");
  $(".palette").html("");
  $.each(colors, function(index, color) {
    var colorDiv = $("<div>").css({
      "width": "100px",
      "height": "100px",
      "background-color": "#" + color,
      "display": "inline-block",
      "margin": "10px"
    });
    $(".palette").append(colorDiv);
  })
}

$(function() {
  $(".color-generator").on("click", function() {
    function errorCallback(data) {
      console.log(data);
    }
    function successCallback(colorPalettes) {
      var palettes = $(".palettes").html("");
      $.each(colorPalettes, function(index, colorPalette) {
        // console.log(colorPalette.id);
        var paletteButton = $("<button>").html(colorPalette.title);
        paletteButton.data("colors", colorPalette.colors.join(","));
        paletteButton.on("click", showPalette);
        palettes.append(paletteButton);
      });
    }
    $.ajax({
      url: "/palettes.json",
      success: successCallback,
      error: errorCallback
    });
  });
});























// function setEventHandlers(){
//   var button = $('.random-palettes')[0];
//   $(button).click(function(callback){
//     var callback = function(data){
//       displayPalettes(data);
//     };
//     $.ajax({
//       url: "/palettes.json",
//       success: callback
//     });
//     console.log("something is happening");
//     // return this;
//   });
// }

// function displayPalettes(data) {
//   for (var i = 0; i < data.length; i++) {
//     var palette = $("<div>").html(data[i]).addClass("parent").css("float", "left").css("margin", "10px");
//     for (var k = 0; k < data.length; k++) {
//       var colorTitle = $("<h3>").html(data[i].title);
//     }
//     for (var j = 0; j < data[i].colors.length; j++) {
//       var color = $("<div>").css("background-color", "#" + data[i].colors[j]).css("width", "200px").css("height", "50px");
//       // console.log(data[i].colors[j]);
//       // debugger;
//       palette.append(color);
//     };
//     $("body").append(palette);
//     palette.append(colorTitle);
//   };
//     // console.log(palette);
// }

// $(function(){
//   setEventHandlers();
// });
