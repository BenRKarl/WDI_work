function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(callback){
    var callback = function(data){
      displayPalettes(data);
    };
    $.ajax({
      url: "/palettes.json",
      success: callback
    });
    console.log("something is happening");
    // return this;
  });
}

function displayPalettes(data) {
  for (var i = 0; i < data.length; i++) {
    var palette = $("<div>").html(data[i]).addClass("parent").css("float", "left").css("margin", "10px");
    for (var k = 0; k < data.length; k++) {
      var colorTitle = $("<h3>").html(data[i].title);
    }
    for (var j = 0; j < data[i].colors.length; j++) {
      var color = $("<div>").css("background-color", "#" + data[i].colors[j]).css("width", "200px").css("height", "50px");
      // console.log(data[i].colors[j]);
      // debugger;
      palette.append(color);
    };
    $("body").append(palette);
    palette.append(colorTitle);
  };
    // console.log(palette);
}

$(function(){
  setEventHandlers();
});
