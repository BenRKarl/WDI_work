// ************ Model *************
function Kitten(kittenJSON){
  this.url = kittenJSON.url;
  this.meow = kittenJSON.meow;
  this.not_meow = kittenJSON.not_meow;
  this.id = kittenJSON.id;
}



// ************ View *************
function KittenView(model){
  this.model = model;
  this.el = undefined;
}

KittenView.prototype.render = function(){
  var kitten = this.model;
  var newElement = $("<div class='kitten'>");
  var id = $("<p>").html(kitten.id);
  var photo = $('<img>').attr("src", kitten.url);
  var meows = $("<p>").html("Meows: " + kitten.meow)
  var notMeows = $("<p>").html("Not meows: " + kitten.not_meow);
  var addMeow = $("<button>").html("Meow").click(function(){
  	kitten.meow += 1;
  	//new KittenCollection().update(kitten);
  	new KittenCollection().random();
  });
  var addNotMeow = $("<button>").html("Not Meow").click(function(){
  	kitten.not_meow += 1;
  	//new KittenCollection().update(kitten);
  	new KittenCollection().random();
  });
  this.el = newElement.append(id).append(photo)
  	.append(meows).append(notMeows).append(addMeow).append(addNotMeow);
  return this;
};

function KittenCollection(){
	this.model = null;
}

KittenCollection.prototype.random = function(){
	var that = this;
	$.ajax({
      url: '/kittens/random', 
      dataType: 'json',
      success: function(data){
      		var kittenModel = new Kitten(data);
      		that.model = kittenModel;
      		var kittenView = new KittenView(kittenModel);
      		$("#kittens").empty();
      		$('#kittens').append(kittenView.render().el);
      	}
    });
}

KittenCollection.prototype.update = function(kitten){
	console.log(kitten);
   $.ajax({
    url: '/kittens/' + kitten.id,
    method: 'put',
    dataType: 'json',
    data: kitten,
    success: function(data){
    	console.log("Kitten updated!");
     	console.log(data);
    }
   })
}

