
var embiggenr = {
   takeText: function(){
      var textEl = $(".embiggen-text");
      var i = 12;
      var h1 = $(".embiggen");
      var string = h1.text();
      $(".embiggen-text").on('keyup', function(){
         console.log(i);
         var inputText = textEl.val();
         var newString = string + inputText;
         $(h1).css('fontsize', i);
         $(h1).html(newString);
         
         i++         

      });

   }
};





$(function(){
   embiggenr.takeText();
});