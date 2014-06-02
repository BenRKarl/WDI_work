function hangman(word) {
    var alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $.each(alpha.split(''), function(i, val) {
        $('#abc').append($('<span class="guess">' + val + '</span>'));
    });
    $.each(word.split(''), function(i, val) {
        $('#word').append($('<span class="letter" letter="' + val + '">_</span>'));
    });
    $('.guess').click(function() {
        var count = $('#word [letter=' + $(this).text() + ']').each(function() {
            $(this).text($(this).attr('letter'));
        }).length;
        $(this).removeClass('guess').css('color', (count > 0 ? 'green' : 'red')).unbind('click');
    });
}

$(document).ready(function() {
  var wordz = ['hose', 'cupboard','opposite','monkey','popsicle','temporary','elemental','governess','stepladder']
  var sample = Math.floor(Math.random() * wordz.length);
  var word = wordz[sample]

  $('#button').click(function() {
    hangman(word);
  });
});