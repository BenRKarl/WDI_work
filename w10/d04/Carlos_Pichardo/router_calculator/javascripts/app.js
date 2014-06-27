var Router = Backbone.Router.extend({
	routes: {
	''	  : 'index',
	'hello/:name' : 'hello',
	'add/:x/:y'   : 'add',
	'substract/:x/:y' : 'substract',
	'divide/:x/:y'    : 'divide'
	},
	index: function(){
		$('body').html("welcome to my calculator");
	},
	hello: function(name){
		$('body').html("Hello" + name);
	},
	add: function(x, y){
		$('body').html(parseInt(x)+parseInt(y));
	},
	substract: function(x, y){
		$('body').html(parseInt(x)-parseInt(y));
	},
	divide: function(x, y){
		$('body').html(parseInt(x)/parseInt(y));
	}

})

$(function(){
	var router = new Router();
	Backbone.history.start();
})