$(function () {

  $('#text-field').on('keyup', function () {
    var text = $('#text-field').val();
    // var li    = document.createElement('h3');
    $h3El = $('#h3');
    $h3El.text(text);

  });
