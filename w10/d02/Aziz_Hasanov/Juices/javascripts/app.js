
var juiceCollection;
var juiceListView;

$(function() {

  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $("#juice-list")
  });

  $(".juice-form").on("submit", function(e) {
    e.preventDefault();
    var juiceFormInput = $(".juice-form input");
    var juiceName = juiceFormInput.val();
    juiceFormInput.val("");
    juiceCollection.add({name: juiceName});
  })
})

