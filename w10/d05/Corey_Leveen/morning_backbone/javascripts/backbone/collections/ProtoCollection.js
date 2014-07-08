var morningBackbone = morningBackbone || { Models : {}, Collections : {}, Views : {} };

morningBackbone.Collections.ProtoCollection = Backbone.Collection.extend({
  model : morningBackbone.Models.Proto
});
