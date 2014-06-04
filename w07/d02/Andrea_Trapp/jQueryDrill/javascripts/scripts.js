
  $(function(){
   
    $('#input-field').on('keyup', function(){
      //console.log('this is the event');
      //console.log(this); ==> html input element
      console.log($(this).val()); //=> the input in the html input element

      var text = $(this).val();
      $h1El = $('#output-field');
      $($h1El).text(text);
      $($h1El).css('font-size', $($h1El).text().length + "px");
    })

  })

