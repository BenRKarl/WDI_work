fontsize = 12;

$(function () {
  $('#text-box').on('keyup', function (){
    var text = ($(this).val());
    $('#h1').text(text);
    $('#h1').css('font-size', ($('#h1').text)().length+ 'px');


  });
});

var textExpand = function (letter) {
  output = $('.output')
  output.html= output.html + letter;
  fontsize = fontsize + 1;
  output.css({'font-size': fontsize })
}
