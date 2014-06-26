var PersonView = Backbone.View.extend({
  template: _.tempalte('<div><h1><%= name %></h1<h2><%= age %></h2>,</div>'),
  //above should be a template function based on ('<div.....')
  render: function(){
    var modelAttributes = this.model.attributes;
    var renderedTemplate = this.template( modelAttributes);
    this.$el.html( renderedTemplate );

    //equiv to: this.$el.html( this.template( this.model.attributes ) )
    // which means, 'pass name and age to the template'
    return this
  }
})

var bod = new Person ({name: 'Kathew Bod', age: 3});
var bodPainter = new PersonView(model: bod);




