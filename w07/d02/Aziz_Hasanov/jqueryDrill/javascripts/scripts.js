$(function() {
  $(".userInput").on("keyup", function() {
    // console.log("yay")
    var text = $(this).val();
    $("p").text(text).css("font-size", $("p").text().length + "px");
  })
})