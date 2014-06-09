
console.log('Let Us Put Stuff Here')

var mta = {
  networkData: {},
  getLineData: function(lineName, callback) {
    // Code will go here to make AJAX request and place the info into the mta's networkData
    var that = this;
    $.ajax({
      url: '/lines/' + lineName,
      dataType: 'json',
      success: function(data) {
        that.networkData[lineName] = data;
        callback()
        // var dataArray = data.stations;
        // var stationsArray = [];
        // for(var i = 0; i < dataArray.length; i++ ) {
        //   stationsArray.push(dataArray[i].address)
        // }
        // that.networkData[lineName] = stationsArray;
      }
    })
    return this;
  }
}

function displayStationList(lineName, listCssSelector) {
  // Code to clear and display a line's stations
  var $lineStationList = $(listCssSelector);
  $lineStationList.html('');
  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(i, elem) {
    var $newLi = $('<li>').html(elem.address);
    $lineStationList.append($newLi);
  })
}

$(function () {
  $('.line').on('click', function(e) {
    var lineName = $(e.target).text().trim();
    mta.getLineData(lineName, function() {
      displayStationList(lineName, '.stations-list')
    })
  })

  $('.line').each(function(idx, element){
    var color = $(element).data('color');
    $(element).css('opacity', 0);
    $(element).css('backgroundColor', color);
    $(element).animate({
      opacity: 1,
    }, 2500)
  })
})
