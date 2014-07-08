var ProtoApp = ProtoApp || { Models: {}, Views: {}, Collections: {}}

ProtoApp.Models.Student = Backbone.Model.extend({
   defaults: {
      name: ''     
   }
})