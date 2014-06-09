
console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {},
  getLineData: function(lineName, callback){
    var that = this;
    $.ajax({
      url: '/lines/' + lineName,
      dataType: 'json',
      success: function(data){
        var stationArray = [];
        for (var i = 0; i < data.stations.length; i++){
          stationArray.push(data.stations[i].address);
        }
      that.networkData[lineName] = stationArray;
      callback();
      }
    });
    return this;
  }
}

function displayStationList(lineName, listCssSelector){
  var list = $(listCssSelector);
  list.html("");
  var lineStations = mta.networkData[lineName];
  for (var i = 0; i < mta.networkData[lineName].length; i++){
    var newLi = $('<li>')
    newLi.append(lineStations[i]);
    list.append(newLi);
  }
}

$(function(){
  $('.line').on('click', function(e){
    e.preventDefault;
    var lineName = e.target.innerText;
    console.log(lineName);
    mta.getLineData(lineName, function(){
      displayStationList(lineName, '.stations-list')
    })
  })

  $('.line').each(function(idx, element){
    var color = $(element).data('color');
    $(element).css('opacity', 0);
    $(element).css('backgroundColor', color);
    $(element).animate({
      opacity: 1,
    }, 500)
  })

})
