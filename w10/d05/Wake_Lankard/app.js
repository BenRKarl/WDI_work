var Proto = Backbone.Model.extend({});
var Protos = Backbone.Collection.extend({
  model: Proto


});
var ProtoView = Backbone.View.extend({
  //template: _.template($('#proto-template')),
    render: function(){
      this.$el.html( this.model.get('name'));
      return this;
    }


});
var ProtosView = Backbone.View.extend({

  render: function(){
    that=this;
    _.each(this.collection.models, function(proto){
      var protoView = new ProtoView({model: proto});
    
      that.$el.append(protoView.render().el);
    })
    return this;
  },
  events :{
    'click' : 'changeColor'
  },
  changeColor: function(){
    this.$el.css('background-color', randomColor())
  }


});


var protos = new Protos();


$(function(){

  protoArr = [
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

  for (var i = 0; i < protoArr.length; ++i){
    var proto = new Proto({name: protoArr[i]});
    
    protos.add(proto);
  }
  var protosView = new ProtosView({
    collection: protos,
    el: $('.protos')

  });
  debugger;
    protosView.render()

})