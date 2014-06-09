
// console.log('Let Us Put Stuff Here')


var mta = {
  networkData: {},
  getLineData: function(lineName,callback){
    var that = this;
  
    $.ajax({
        url: '/lines/' + lineName,
        dataType: 'json',
        success: function(data){
          var name = lineName
          for(var i = 0; i < data.stations.length; i++){
            that.networkData[lineName] = data;

            callback()
            };
        }
    })
    return this;
  }
};



function displayStationList(lineName, listCssSelector){
  //Code to clear and display a line's stations
  var $lineStationList = $(listCssSelector);
  $lineStationList.html('');

  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(idx,ele){
    var $newLi = $('<li>').html(ele.address);
    $lineStationList.append($newLi);

  })
}

$(function(){

  $('.line').on('click', function(e){
    var lineName = $(e.target).text().trim();


      mta.getLineData(lineName, function(){ 
        displayStationList(lineName, '.stations-list')
      })

   })
})

