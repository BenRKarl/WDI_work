var GoogleApi = {
  search: function(title, callback){
	this.request(title, 's', callback);
	return this;
    },
    lookup: function(, callback){
  	 this.request(, 'i', callback);
  	 return this;
  	},
  	url: function(query, parameter){
  		return '' + parameter + '=' + query;
  	},