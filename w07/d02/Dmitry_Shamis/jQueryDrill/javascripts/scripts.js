$(function () {
  $('.text-input').keyup(function () {
    var h1 = $('.text');
    var text = $(this).val();
    h1.text(text)
      .css('font-size', $(h1).text().length + "px")
  })
})
