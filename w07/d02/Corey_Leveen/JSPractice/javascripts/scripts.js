$(function(){
  $('#form').on('submit', function(e){
    e.preventDefault();
    var input = $('#input').val();

    function Thinger(param){
      this.el = param;
    }
    var object = new Thinger(input);
    var ele = $('<li>').html(object.el);

    $('#main').append(ele);
    $('#input').val('');
  });
});
