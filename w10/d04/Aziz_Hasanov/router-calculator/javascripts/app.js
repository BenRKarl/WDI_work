var Router = Backbone.Router.extend({
  initialize: function() {
    this.$body = $("body");
  },
  routes: {
    "" : 'index',
    "hello/:name" : "hello",
    "add/:x/:y" : "add",
    "subtract/:x/:y" : "subtract",
    "divide/:x/:y" : "divide",
    "multiply/:x/:y" : "multiply",
    "square/:x" : "square"
  },
  index: function() {
    $("body").html("welcome");
  },
  hello: function(name) {
    $("body").html("Hello " + name);
  },
  add: function(x, y) {
    $("body").html(parseInt(x) + parseInt(y));
  },
  subtract: function(x, y) {
    $("body").html(parseInt(x) - parseInt(y));
  },
  divide: function(x, y) {
    $("body").html(parseInt(x) / parseInt(y));
  },
  multiply: function(x, y) {
    $("body").html(parseInt(x) * parseInt(y));
  },
  square: function(x) {
    $("body").html(parseInt(x) * parseInt(x));
  },
});

$(function() {
  var router = new Router();
  Backbone.history.start();
})