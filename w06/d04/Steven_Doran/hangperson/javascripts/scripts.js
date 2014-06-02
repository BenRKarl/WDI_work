function randomWord() {
   var wordList = ['acres','adult','advice','arrangement','attempt','august','autumn','border','breeze','brick','calm','canal','cast','chose','claws','coach','constantly','contrast','cookies','customs','damage','deeply','depth','discussion','doll','donkey','egypt','essential','exchange','exist','explanation','facing','film','finest','fireplace','floating','folks','fort','garage','grabbed','grandmother','habit','happily','heading','hunter','illinois','image','independent','instant','january','kids','label','lungs','manufacturing','mathematics','melted','memory','mill','mission','monkey','mysterious','neighborhood','norway','nuts','occasionally','official','ourselves','palace','pennsylvania','philadelphia','plates','poetry','policeman','positive','possibly','practical','pride','promised','recall','relationship','remarkable','require','rhyme','rocky','rubbed','rush','sale','satellites','satisfied','scared','selection','shake','shaking','shallow','shout','silly','simplest','slight','slip','slope','soap','solar','species','spin','stiff','swung','tales','thumb','tobacco','toy','trap','treated','tune','university','vapor','vessels','wealth','wolf','zoo'];
   var word = (wordList[Math.floor(wordList.length * Math.random())]).split('');
   return word;
};

$(function(){

   word = randomWord();
   displayWord = [];

   for (i in word){
      displayWord.push('*');
   }
   console.log(displayWord);
   
   $(".submit").click(function(){
      var letter = $(".text-field").val();
      $(".text-field").val('');
      if ($.inArray(letter, word) > -1){
         console.log("yay")
      };
   });



});



















