
$(function() {
  var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100')
              .addClass('sheen')
              .draggable();

  sheen.appendTo($('#sheen-bin')).hide().fadeIn(3000);
});
