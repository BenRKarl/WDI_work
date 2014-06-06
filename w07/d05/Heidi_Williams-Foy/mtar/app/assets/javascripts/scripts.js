
console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {},
  getLineData: function( lineName, callback){
  	var that = this;

	$.ajax({
		url: '/lines/' + lineName,
		dataType: 'json',
		success: function(data){
			that[lineName] = data
			console.log(that.networkData)
	    }
	})
}

};

function displaysStationList(lineName, listCssSelector){
	//Code to clear and display a line's stations.
	for (var = i; 0 < types.length, i++ )
		
	//constructor view or to the DOM
	//display everything
}

$(function(){
	$('.line').on('click', function(e){
		//Obtain line's name
		//var lineName = ?

		mta.getLineData(lineName, function(){
			displayStationList(lineName, '.stations-list')
		})
	})
})
