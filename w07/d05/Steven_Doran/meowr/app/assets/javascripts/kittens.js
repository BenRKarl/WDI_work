
// **** model ****
function Kitten(url){
   this.url = url;
};

Kitten.prototype.save = function(paramObject) {
   var that = this;

   $.ajax({
      url:'/kittens',
      method: 'post',
      dataType: 'json',
      data: {kitten: paramObject},
      success: function(data) {
         console.log('Kitten with url "' + data.url + '"was added to the database')
      }
   })
};

// **** view ****
function KittenView(model){
   this.model = model;
   this.el = undefined;
};

KittenView.prototype.render = function() {
   var kittenEl = $('<img>').attr({src: this.model.url, id: 'kitten-image'});
   this.el = kittenEl;
   return this;
};

// **** other ****
function clearAndDisplayKitten () {
   $('#kitten-field').html('');

   var rand = Math.ceil(Math.random() * 300) + 100;
   var url = 'http://placekitten.com/' + rand + '/' + rand
   var kitten = new Kitten(url);
   var kittenView = new KittenView(kitten)
   $('#kitten-field').append(kittenView.render().el);
};

// **** on load ****
$(function() {
   
clearAndDisplayKitten();

$('#kitten-button').click(function() {
   clearAndDisplayKitten();
})

$('.save-form').submit(function(e) {
   e.preventDefault();
   var newURL = $('#kitten-image').attr('src');
   var kitten = new Kitten(newURL);
   kitten.save({url: newURL}); 
   clearAndDisplayKitten();
})
// get url of image on click of save button
// pass to ajax as params

})






