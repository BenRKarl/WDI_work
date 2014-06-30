var morningBackbone = morningBackbone || { Models : {}, Collections : {}, Views : {} };

morningBackbone.Views.ProtoView = Backbone.View.extend({
  initialize : function(){
    this.listenTo(this.model, 'all', this.render)
  },
  tagName : 'div',
  template : _.template($('.proto-template').html()),
  render : function(){
    this.$el.empty();
    this.$el.html(this.template(this.model.attributes));
    return this;
  },
  events : {
    'click [data-action="randomColor"]' : 'randomColor'
  },
  randomColor : function(){
   var color = '#'+Math.floor(Math.random()*16777215).toString(16);
    this.$el.css("background-color", color);
  }
});
