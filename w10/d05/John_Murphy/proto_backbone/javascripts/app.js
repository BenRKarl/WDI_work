var proto = [
'Nessa Nguyen',
'Jeff Winkler',
'John Murphy',
'Jeff Drakos',
'Rebecca Strong',
'Gardner Lonsberry' ,
'Jonathan Gean',
'Nathaniel Tuvera',
'Tim Hannes',
'Aziz Hasanov',
'Chris Heuberger',
'Dmitry Shamis' ,
'Corey Leveen',
'Paul Hiam',
'Steven Doran',
'Ben Karl',
'Kristen Tonga',
'Wake Lankard',
'Carlos Pichardo' ,
'Paul Gasberra',
'Andrea Trapp',
'Heidi Williams-Foy'
]

function randomColor(){
  return '#'+Math.floor(Math.random()*16777215).toString(16);
}

var Proto = Backbone.Model.extend({})

var ProtoCollection = Backbone.Collection.extend({
  model: Proto
})

var ProtoView = Backbone.View.extend({
  tagName: 'div',
  template: _.template($('#proto-template').html()),
  render: function(){
    this.$el.append(this.template({proto: this.model.toJSON()}))
    return this;
  },
  events: {
    'click': 'colorize'
  },
  colorize: function(){
    this.$el.css('background-color', randomColor())
    this.turn()
  },
  turn: function(){
    this.$el.animate({
      paddingLeft: '+=20'
    }, 150)
  }

})

var ProtoListView = Backbone.View.extend({

  render: function(){
    var that = this;
    _.each(this.collection.models, function(model){
      var newProtoView = new ProtoView({
        model: model
      });
      that.$el.append(newProtoView.render().el);
    });
  }
});
var protoCollection
var protoListView

$(function(){
  protoCollection = new ProtoCollection()
  _.each(proto, function(protoname){
    var newestProto = new Proto({
      name: protoname
    })
    protoCollection.add(newestProto)
  })
  protoListView = new ProtoListView({
    collection: protoCollection,
    el: $('body')
  })
  protoListView.render()
})
