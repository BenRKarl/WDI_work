var aBathingApp = aBathingApp || { Models : {}, Collections : {}, Views : {} };

aBathingApp.Collections.MonkeyCollection = Backbone.Collection.extend({
    model : aBathingApp.Models.Monkey,
    url: '/monkeys'
});
