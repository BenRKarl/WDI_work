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
];

var Proto = Backbone.Model.extend({
});

var ProtoCollection = Backbone.Collection.extend({
  model: Proto
});

var ProtoView = Backbone.View.extend({
  render: function(){
    this.$el.html( this.model.get("name") );
    return this;
  },
  events:{
    'mouseover':'getFancy'
  },
  getFancy: function(){
    this.$el.css('background-color', 'blue');
  }
});

var ProtoListView = Backbone.View.extend({
  render: function(){
    var that = this;
    _.each(this.collection.models, function(proto){
      var newView = new ProtoView({model: proto});
      that.$el.append(newView.render().el);
    });
    return this;
  }
})

var proCol = new ProtoCollection();

addProto = function(){
  _.each(proto, function(s){
    var sModel = new Proto({name: s});
    proCol.add(sModel);
  });
}

$(function(){

addProto();
var listView = new ProtoListView({collection: proCol, el: $('body')});
listView.render();

})
